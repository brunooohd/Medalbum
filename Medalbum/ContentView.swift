//
//  ContentView.swift
//  Medalbum
//
//  Created by Bruno Dias on 19/06/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var apiService = APIService()
    
    var body: some View {
        VStack {
            List(apiService.schedules.indices, id: \.self) { index in
                Text("Schedule \(index + 1)")
            }
            .onAppear {
                apiService.fetchAndFindSchedules()
            }
        }
    }
}

#Preview {
    ContentView()
}
