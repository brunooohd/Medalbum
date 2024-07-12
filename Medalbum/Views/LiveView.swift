import SwiftUI
import Combine
import Foundation

struct LiveView: View {
    @StateObject private var apiService = UnitsAPIService()
    @State private var categories: [Category] = []

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(categories) { category in
                        createCategorySection(for: category)
                        Divider()
                    }
                }
                .padding()
            }
            .navigationTitle("Live")
            .onAppear {
                apiService.fetchAndExtractUnits()
            }
            .onReceive(apiService.$units) { units in
                let filteredUnits = filterEventsWithinNextHour(units, hour: 16, minute: 00, second: 0)
                organizeUnitsIntoCategories(filteredUnits)
            }
            .background(Color(UIColor.systemGroupedBackground))
        }
        .background(Color(UIColor.systemGroupedBackground))

    }
    

    private func createCategorySection(for category: Category) -> some View {
        VStack(alignment: .leading) {
            HStack {
                Text(category.title)
                    .font(.title3)
                    .fontWeight(.bold)
                Spacer()
//                NavigationLink(destination: UnitsView()) {
//                    Text("Show All")
//                }
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(category.items) { item in
                        PlaceholderCardView() // Cartão placeholder
                            .frame(width: 340, height: 200)
                    }
                }
            }
        }
    }

    private func organizeUnitsIntoCategories(_ units: [Unit]) {
        var categoryDict: [String: [Unit]] = [:]

        for unit in units {
            let category = categoryTreatment(code: unit.unitCode.prefix(3))
            if !category.isEmpty {
                if categoryDict[category] != nil {
                    categoryDict[category]?.append(unit)
                } else {
                    categoryDict[category] = [unit]
                }
            }
        }

        categories = categoryDict.map { Category(title: $0.key, items: $0.value) }
    }

    private func filterEventsWithinNextHour(_ units: [Unit], hour: Int, minute: Int, second: Int) -> [Unit] {
        let now = getSimulatedDate(hour: hour, minute: minute, second: second)
        let oneHourLater = now.addingTimeInterval(3600)

        return units.filter { unit in
            if let eventDate = ISO8601DateFormatter().date(from: unit.startDateTime) {
                let simulatedEventDate = getSimulatedDate(from: eventDate)
                return simulatedEventDate >= now && simulatedEventDate <= oneHourLater
            }
            return false
        }
    }

    private func getSimulatedDate(hour: Int, minute: Int, second: Int) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let simulatedDateString = "2024-07-25 \(String(format: "%02d", hour)):\(String(format: "%02d", minute)):\(String(format: "%02d", second))"
        return dateFormatter.date(from: simulatedDateString) ?? Date()
    }

    private func getSimulatedDate(from date: Date) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss"
        let timeComponent = dateFormatter.string(from: date)

        let simulatedDateString = "2024-07-25 \(timeComponent)"
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return dateFormatter.date(from: simulatedDateString) ?? date
    }
}



#Preview {
  LiveView()
}








