import SwiftUI
import Combine

class APIService: ObservableObject {
    @Published var schedules: [[String: Any]] = []
    
    func fetchAndFindSchedules() {
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
                print("JSON received: \(jsonObject)")
                if let schedules = self.extractSchedules(from: jsonObject) {
                    DispatchQueue.main.async {
                        self.schedules = schedules
                        print("Schedules data extracted successfully:")
                        for (index, schedule) in schedules.enumerated() {
                            if let jsonData = try? JSONSerialization.data(withJSONObject: schedule, options: .prettyPrinted) {
                                let jsonString = String(data: jsonData, encoding: .utf8) ?? "N/A"
                                print("Schedule \(index + 1):\n\(jsonString)")
                            }
                        }
                    }
                } else {
                    DispatchQueue.main.async {
                        print("No schedules found in the JSON data.")
                    }
                }
            } catch {
                print("Error decoding JSON: \(error.localizedDescription)")
            }
        }.resume()
    }
    
    private func extractSchedules(from json: Any) -> [[String: Any]]? {
        if let dict = json as? [String: Any],
           let pageProps = dict["pageProps"] as? [String: Any],
           let page = pageProps["page"] as? [String: Any],
           let items = page["items"] as? [[String: Any]] {
            for item in items {
                if let data = item["data"] as? [String: Any],
                   let schedules = data["schedules"] as? [[String: Any]] {
                    return schedules
                }
            }
        }
        return nil
    }
}

