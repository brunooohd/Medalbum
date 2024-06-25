//
//  UnitsAPIService.swift
//  Medalbum
//
//  Created by Silvana Rodrigues Alves on 25/06/24.
//

import Foundation
import SwiftUI
import Combine

struct Unit: Identifiable {
    let id = UUID()
    let unitCode: String
    let description: String
    let startDateTime: String
    let endDateTime: String
    let localStartDateTime: String
    let localEndDateTime: String
}

class UnitsAPIService: ObservableObject {
    @Published var units: [Unit] = []
    
    func fetchAndExtractUnits() {
        guard let url = URL(string: "https://olympics.com/_next/data/_pr-2024_06_25T08_11_47.641Z/en/paris-2024/schedule/24-july.json?deviceType=desktop&countryCode=BR&path=paris-2024&path=schedule&path=24-july") else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Request error: \(error.localizedDescription)")
                return
            }
            
            guard let data = data else {
                print("No data received")
                return
            }
            
            do {
                let jsonObject = try JSONSerialization.jsonObject(with: data, options: [])
                if let units = self.extractUnits(from: jsonObject) {
                    DispatchQueue.main.async {
                        self.units = units
                    }
                } else {
                    DispatchQueue.main.async {
                        print("No units found in the JSON data.")
                    }
                }
            } catch {
                print("Error decoding JSON: \(error.localizedDescription)")
            }
        }.resume()
    }
    
    private func extractUnits(from json: Any) -> [Unit]? {
        if let dict = json as? [String: Any],
           let pageProps = dict["pageProps"] as? [String: Any],
           let page = pageProps["page"] as? [String: Any],
           let items = page["items"] as? [[String: Any]] {
            var extractedUnits: [Unit] = []
            for item in items {
                if let data = item["data"] as? [String: Any],
                   let schedules = data["schedules"] as? [[String: Any]] {
                    for schedule in schedules {
                        if let units = schedule["units"] as? [[String: Any]] {
                            for unitDict in units {
                                if let unitCode = unitDict["unitCode"] as? String,
                                   let description = unitDict["description"] as? String,
                                   let startDateTime = unitDict["startDateTimeUtc"] as? String,
                                   let endDateTime = unitDict["endDateTimeUtc"] as? String,
                                   let localStartDateTime = unitDict["localStartDateTime"] as? String,
                                   let localEndDateTime = unitDict["localEndDateTime"] as? String {
                                    let unit = Unit(unitCode: unitCode,
                                                    description: description,
                                                    startDateTime: startDateTime,
                                                    endDateTime: endDateTime,
                                                    localStartDateTime: localStartDateTime,
                                                    localEndDateTime: localEndDateTime)
                                    extractedUnits.append(unit)
                                }
                            }
                        }
                    }
                }
            }
            return extractedUnits
        }
        return nil
    }
}

