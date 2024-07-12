import SwiftUI

struct UnitDetailView: View {
    var unit: Unit

    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                Group {
                    DetailCard {
                        VStack(alignment: .leading, spacing: 10) {
                            DetailRow(label: "Category", value: unit.description)
                            DetailRow(label: "Start Time (UTC)", value: formatTime(unit.startDateTime))
                            DetailRow(label: "End Time (UTC)", value: formatTime(unit.endDateTime))
                            DetailRow(label: "Local Start Time", value: formatLocalTime(unit.localStartDateTime))
                            DetailRow(label: "Local End Time", value: formatLocalTime(unit.localEndDateTime))
                        }
                    }
                }
                
                if let venue = unit.venue {
                    DetailCard {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Venue")
                                .font(.headline)
                                .padding(.bottom, 5)
                                .foregroundColor(.customBlue)
                                .fontWeight(.semibold)
                            DetailRow(label: "Venue Code", value: venue.venueCode)
                            DetailRow(label: "Event location", value: venue.description)
                        }
                    }
                }

                if let match = unit.match {
                    DetailCard {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Match")
                                .font(.headline)
                                .padding(.bottom, 5)
                                .foregroundColor(.customBlue)
                                .fontWeight(.semibold)
                            DetailRow(label: "Teams", value: "\(match.team1.description) vs \(match.team2.description)")
                        }
                    }
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 20)
            .background(Color(.systemGray6))
            .navigationTitle("Details")
        }
        .background(Color(.systemGray6))
    }

    // Função auxiliar para formatar a data e hora
    private func formatTime(_ dateTime: String) -> String {
        let formatter = ISO8601DateFormatter()
        guard let date = formatter.date(from: dateTime) else { return dateTime }
        
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "HH:mm"
        
        return timeFormatter.string(from: date)
    }
    
    // Função auxiliar para formatar a hora local
    private func formatLocalTime(_ dateTime: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        guard let date = formatter.date(from: dateTime) else { return dateTime }
        
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "HH:mm"
        
        return timeFormatter.string(from: date)
    }
}

struct DetailCard<Content: View>: View {
    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        VStack(alignment: .leading) {
            content
                .padding()
                .background(Color.white)
                .cornerRadius(10)
//                .shadow(radius: 5)
        }
        .frame(maxWidth: .infinity)
    }
}

struct DetailRow: View {
    let label: String
    let value: String

    var body: some View {
        HStack {
            Text(label)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(.customBlue)
            Spacer()
            Text(value)
                .font(.subheadline)
                .foregroundColor(.primary)
        }
    }
}

struct UnitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UnitDetailView(
            unit: Unit(
                unitCode: "ARC",
                description: "Archery",
                startDateTime: "2024-07-09T20:00:00Z",
                endDateTime: "2024-07-09T22:00:00Z",
                localStartDateTime: "2024-07-09T20:00:00",
                localEndDateTime: "2024-07-09T22:00:00",
                match: Match1(
                    team1: Team1(teamCode: "BLR", description: "Blackburn Rovers"),
                    team2: Team1(teamCode: "SWA", description: "Swansea City")
                ),
                venue: EventVenue(venueCode: "PDP", description: "Parc des Princes")
            )
        )
    }
}
