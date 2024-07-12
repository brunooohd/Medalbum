import SwiftUI
import Combine
import Foundation

class UnitsAPIService: ObservableObject {
    @Published var units: [Unit] = []
    
    func fetchAndExtractUnits() {
        guard let url = URL(string: "https://olympics.com/_next/data/_pr-2024_07_12T10_27_07.697Z/en/paris-2024/schedule/25-july.json?deviceType=desktop&countryCode=BR&path=paris-2024&path=schedule&path=25-july") else {
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
                                    var match: Match1? = nil
                                    if let matchDict = unitDict["match"] as? [String: Any],
                                       let team1Dict = matchDict["team1"] as? [String: Any],
                                       let team2Dict = matchDict["team2"] as? [String: Any],
                                       let team1Code = team1Dict["teamCode"] as? String,
                                       let team1Description = team1Dict["description"] as? String,
                                       let team2Code = team2Dict["teamCode"] as? String,
                                       let team2Description = team2Dict["description"] as? String {
                                        
                                        let team1 = Team1(teamCode: team1Code, description: team1Description)
                                        let team2 = Team1(teamCode: team2Code, description: team2Description)
                                        match = Match1(team1: team1, team2: team2)
                                    }
                                    
                                    var venue: EventVenue? = nil
                                    if let venueDict = unitDict["venue"] as? [String: Any],
                                       let venueCode = venueDict["venueCode"] as? String,
                                       let venueDescription = venueDict["description"] as? String {
                                        venue = EventVenue(venueCode: venueCode, description: venueDescription)
                                    }
                                    
                                    let unit = Unit(unitCode: unitCode,
                                                    description: description,
                                                    startDateTime: startDateTime,
                                                    endDateTime: endDateTime,
                                                    localStartDateTime: localStartDateTime,
                                                    localEndDateTime: localEndDateTime,
                                                    match: match,
                                                    venue: venue)
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
