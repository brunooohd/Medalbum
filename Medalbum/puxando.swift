//
//  puxando.swift
//  Medalbum
//
//  Created by Bruno Dias on 24/06/24.
//

import Foundation
import Combine

class APIService: ObservableObject {
    @Published var scheduleData: Welcome?
    
    func fetchSchedule() {
        guard let url = URL(string: "https://olympics.com/_next/data/_pr-2024_06_24T09_36_35.578Z/en/paris-2024/schedule/24-july.json?deviceType=desktop&countryCode=BR&path=paris-2024&path=schedule&path=24-july") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decodedData = try JSONDecoder().decode(Welcome.self, from: data)
                    DispatchQueue.main.async {
                     //   print(decodedData)
                       self.scheduleData = decodedData
                    }
                } catch {
                    print(error)
                    print("Erro ao decodificar JSON: \(error.localizedDescription)")
                }
            }
        }.resume()
    }
}
