//
//  ExtractFile.swift
//  Medalbum
//
//  Created by Bruno Dias on 01/07/24.
//

import Foundation

func extractTime(from isoDateString: String) -> String? {
    let isoDateFormatter = ISO8601DateFormatter()
    isoDateFormatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
    
    if let date = isoDateFormatter.date(from: isoDateString) {
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "HH:mm:ss"
        return timeFormatter.string(from: date)
    }
    return nil
}


