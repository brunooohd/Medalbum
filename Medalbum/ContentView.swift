import SwiftUI

struct ContentView: View {
    @StateObject private var apiService = APIService()
    
    var body: some View {
        TabView {
            LiveView()
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
        .accentColor(.customYellow) // Use your custom color here
    }
}

#Preview {
    ContentView()
}
