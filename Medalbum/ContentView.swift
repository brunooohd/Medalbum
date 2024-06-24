//
//  ContentView.swift
//  Medalbum
//
//  Created by Bruno Dias on 19/06/24.
//

import SwiftUI

struct ContentView: View {
    @State var welcome: Welcome?
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .onAppear {
            APIService().fetchSchedule() 
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
