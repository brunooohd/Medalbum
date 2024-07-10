
import Foundation

func extractTime(from isoDateString: String) -> String? {
    let isoDateFormatter = ISO8601DateFormatter()
    
    if let date = isoDateFormatter.date(from: isoDateString) {
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "HH:mm"
        return timeFormatter.string(from: date)
    }
    return nil
}
