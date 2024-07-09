import SwiftUI

struct UnitsView: View {
    @StateObject private var apiService = UnitsAPIService()

    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(apiService.units) { unit in
                    NavigationLink(destination: UnitDetailView(unit: unit)) {
                        CardView(unit: unit)
                    }
                }
                .listStyle(.plain)
                .onAppear {
                    apiService.fetchAndExtractUnits()
                }
                .navigationTitle("Schedule")
            }
        }
    }
}

struct UnitsView_Previews: PreviewProvider {
    static var previews: some View {
        UnitsView()
    }
}
