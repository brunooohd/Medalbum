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
            ScrollView{
                    
                    ForEach(apiService.units) { unit in
                   
//                        if categoryTreatment(code: unit.unitCode.prefix(3)) == "Tennis"{
                                          
                                            NavigationLink(destination: UnitDetailView(unit: unit)) {
                                                
                                                CardView(unit: unit)
                                                
                                                //                        Text(categoryTreatment(code: unit.unitCode.prefix(3)))
                                            }
//                        }
                    }.listStyle(.plain)
                        .onAppear {
                            apiService.fetchAndExtractUnits()
                        }
                        .navigationTitle("Schedule")
            }
        }
    }
}
#Preview {
    UnitsView()
}
