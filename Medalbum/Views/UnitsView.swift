import SwiftUI

struct UnitsView: View {
    @StateObject private var apiService = UnitsAPIService()

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 16) { 
                    ForEach(apiService.units) { unit in
                        NavigationLink(destination: UnitDetailView(unit: unit)) {
                            CardView(unit: unit)
                                .padding(.horizontal, 16)
                        }
                    }
                }
                .padding(.horizontal, 16)
            }
            .navigationTitle("Schedule")
            .onAppear {
                apiService.fetchAndExtractUnits()
            }
        }
    }
}

struct UnitsView_Previews: PreviewProvider {
    static var previews: some View {
        UnitsView()
    }
}
