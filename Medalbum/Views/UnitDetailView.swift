
import SwiftUI

struct UnitDetailView: View {
    var unit: Unit

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Unit Code: \(unit.unitCode)")
                .font(.headline)
            Text("Description: \(unit.description)")
                .font(.subheadline)
            Text("Start DateTime (UTC): \(unit.startDateTime)")
                .font(.subheadline)
            Text("End DateTime (UTC): \(unit.endDateTime)")
                .font(.subheadline)
            Text("Local Start DateTime: \(unit.localStartDateTime)")
                .font(.subheadline)
            Text("Local End DateTime: \(unit.localEndDateTime)")
                .font(.subheadline)
        }
        .padding()
        .navigationTitle("Unit Details")
    }
}


