//
//  PlaceholderCardView.swift
//  Medalbum
//
//  Created by Silvana Rodrigues Alves on 11/07/24.
//

import SwiftUI

struct PlaceholderCardView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.white)
            .overlay(
                Text("Placeholder")
                
            )
    }
}

#Preview {
    PlaceholderCardView()
}
