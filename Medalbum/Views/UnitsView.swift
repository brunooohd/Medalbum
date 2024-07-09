import SwiftUI

struct UnitsView: View {
    @StateObject private var apiService = UnitsAPIService()
    @State private var searchText = ""
    @State private var favoriteUnitIDs: Set<UUID> = []
    @State private var showFavoritesOnly: Bool = false

    var filteredUnits: [Unit] {
        let unitsToFilter = showFavoritesOnly ? apiService.units.filter { favoriteUnitIDs.contains($0.id) } : apiService.units
        if searchText.isEmpty {
            return unitsToFilter
        } else {
            return unitsToFilter.filter { unit in
                categoryTreatment(code: unit.unitCode.prefix(3)).localizedCaseInsensitiveContains(searchText)
            }
        }
    }

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    HStack {
                        Image(systemName: "magnifyingglass")
                                                .foregroundColor(.gray)
                                            TextField("Search", text: $searchText)
                                                .textFieldStyle(PlainTextFieldStyle())
                                                .padding(10)
                                            Image(systemName: "mic.fill")
                                                .foregroundColor(.gray)
                                        }
                                        .padding(.horizontal, 10)
                                        .background(Color.white)
                                        .cornerRadius(10)
                    
                    Image(systemName:"ellipsis.circle")
                        .foregroundColor(.customYellow)
                        .onTapGesture {
                            showFavoritesOnly.toggle()
                        }
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(10)
                }
                .padding()

                ScrollView {
                    LazyVStack(spacing: 16) {
                        ForEach(filteredUnits) { unit in
                            CardView(unit: unit, isFavorite: favoriteUnitIDs.contains(unit.id)) {
                                if favoriteUnitIDs.contains(unit.id) {
                                    favoriteUnitIDs.remove(unit.id)
                                } else {
                                    favoriteUnitIDs.insert(unit.id)
                                }
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                            .padding(.horizontal, 16)
                        }
                    }
                    .padding(.horizontal, 8)
                }
            }
            .background(Color(UIColor.systemGroupedBackground))
            .navigationTitle("Schedule")
            .navigationBarTitleDisplayMode(.large)
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
