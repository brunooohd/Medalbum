import SwiftUI

struct CardView: View {
    let unit: Unit

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                imageTreatment(code: unit.unitCode.prefix(3))
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.black)
                    .padding(.trailing, 10) 
                Text(categoryTreatment(code: unit.unitCode.prefix(3)))
                    .textStyle(size: 14, weight: .bold)
                
                Spacer()
            }
            
            Text(unit.description)
                .textStyle(size: 14, weight: .medium)
            
            if let match = unit.match {
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Text("\(match.team1.description)  -  \(match.team2.description)")
                            .textStyle(size: 14, weight: .regular)
                        
                        Spacer()
                    }
                    
                }
            }
            
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Text("Start Time:")
                        .textStyle(size: 12, weight: .medium)
                    Text(extractTime(from: unit.startDateTime) ?? "")
                        .textStyle(size: 12, weight: .regular)
                }
                
                HStack {
                    Text("End Time:")
                        .textStyle(size: 12, weight: .medium)
                    Text(extractTime(from: unit.endDateTime) ?? "")
                        .textStyle(size: 12, weight: .regular)
                }
            }
            
        }
        .padding()
        .background(Color.white)
        .cornerRadius(8)
        .shadow(radius: 1)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(unit: Unit(
            unitCode: "ARC",
            description: "Archery",
            startDateTime: "2024-07-09T20:00:00Z",
            endDateTime: "2024-07-09T22:00:00Z",
            localStartDateTime: "20:00",
            localEndDateTime: "22:00",
            match: Match1(team1: Team(teamCode: "BLR", description: "Blackburn Rovers"), team2: Team(teamCode: "SWA", description: "Swansea City"))
        ))
    }
}
