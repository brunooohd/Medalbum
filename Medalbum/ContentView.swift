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
        TabView {
                    Text("Live view")
                        .tabItem {
                            Image(systemName: "livephoto")
                            Text("Live")
                        }
                    
                    UnitsView()
                        .tabItem {
                            Image(systemName: "calendar")
                            Text("Schedule")
                        }
                    
                    Text("Album View")
                        .tabItem {
                            Image(systemName: "book.fill")
                            Text("Album")
                        }
                }
    }
}

#Preview {
    ContentView()
}
