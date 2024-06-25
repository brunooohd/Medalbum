//
//  UnitsView.swift
//  Medalbum
//
//  Created by Silvana Rodrigues Alves on 25/06/24.
//

import SwiftUI

struct UnitsView: View {
    @StateObject private var apiService = UnitsAPIService()

    var body: some View {
        NavigationView {
            List(apiService.units) { unit in
                NavigationLink(destination: UnitDetailView(unit: unit)) {
                    Text(unit.description)
                }
            }
            .onAppear {
                apiService.fetchAndExtractUnits()
            }
            .navigationTitle("Units")
        }
    }
}
#Preview {
    UnitsView()
}
