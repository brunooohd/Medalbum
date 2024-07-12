//
//  Category.swift
//  Medalbum
//
//  Created by Silvana Rodrigues Alves on 11/07/24.
//

import Foundation


struct Category: Identifiable {
    let id = UUID()
    let title: String
    let items: [Unit]
    
}
