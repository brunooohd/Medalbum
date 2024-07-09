import SwiftUI

struct UnitsView: View {
    @StateObject private var apiService = UnitsAPIService()
    @State private var searchText = ""

    var filteredUnits: [Unit] {
        if searchText.isEmpty {
            return apiService.units
        } else {
            return apiService.units.filter { unit in
                categoryTreatment(code: unit.unitCode.prefix(3)).localizedCaseInsensitiveContains(searchText)
            }
        }
    }

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    TextField("Search", text: $searchText)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding(10)
                    Image(systemName: "mic")
                        .foregroundColor(.gray)
                }
                .padding(.horizontal, 10)
                .background(Color.white)
                .cornerRadius(10)
                .padding()

                ScrollView {
                    LazyVStack(spacing: 16) {
                        ForEach(filteredUnits) { unit in
                            CardView(unit: unit)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                                .padding(.horizontal, 16)
                        }
                    }
                    .padding(.horizontal, 16)
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
