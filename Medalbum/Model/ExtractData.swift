//
//  ExtractFile.swift
//  Medalbum
//
//  Created by Bruno Dias on 01/07/24.
//

import Foundation

func extractTime(from isoDateString: String) -> String? {
    let isoDateFormatter = ISO8601DateFormatter()
    
    // Converter a string para Date
    if let date = isoDateFormatter.date(from: isoDateString) {
        // Configurar um DateFormatter para extrair apenas o horário
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "HH:mm"
        return timeFormatter.string(from: date)
    }
    return nil
}
