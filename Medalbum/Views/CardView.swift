import SwiftUI

struct CardView: View {
    let unit: Unit
    let isFavorite: Bool
    let onFavoriteToggle: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack {
                   ZStack {
                       RoundedRectangle(cornerRadius: 8)
                           .fill(Color.customBlue)
                           .frame(width: 30, height: 30)
                       imageTreatment(code: unit.unitCode.prefix(3))
                           .resizable()
                           .frame(width: 20, height: 20)
                           .foregroundColor(.white)
                   }
                   .padding(.trailing, 5)
                   
                   Text(categoryTreatment(code: unit.unitCode.prefix(3)))
                       .textStyle(size: 19, weight: .semibold, color: .customBlue)
                   
                   Spacer()
                
                NavigationLink(destination: UnitDetailView(unit: unit)) {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.secondary)
                        .imageScale(.large)
                        .padding()
                }
            }
            
            Text(unit.description)
                .textStyle(size: 17, weight: .medium)
            
            if let match = unit.match {
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Text("\(match.team1.description)  -  \(match.team2.description)")
                            .textStyle(size: 14, weight: .regular)
                        
                        Spacer()
                    }
                }
            }
            
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    HStack {
                        Text("Starts at ")
                            .textStyle(size: 14, weight: .semibold, color: .gray)
                        Text(extractTime(from: unit.startDateTime) ?? "")
                            .textStyle(size: 14, weight: .medium, color: .gray)
                    }
                }
                
                Spacer()
                
                Image(systemName: isFavorite ? "star.fill" : "star")
                    .foregroundColor(.customYellow)
                    .padding(.trailing, 10)
                    .onTapGesture {
                        onFavoriteToggle()
                    }
            }
        }
        .background(Color.white)
        .cornerRadius(8)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(
            unit: Unit(
                unitCode: "ARC",
                description: "Archery",
                startDateTime: "2024-07-09T20:00:00Z",
                endDateTime: "2024-07-09T22:00:00Z",
                localStartDateTime: "20:00",
                localEndDateTime: "22:00",
                match: Match1(
                    team1: Team1(teamCode: "BLR", description: "Blackburn Rovers"),
                    team2: Team1(teamCode: "SWA", description: "Swansea City")
                )
            ),
            isFavorite: false,
            onFavoriteToggle: {}
        )
    }
}
