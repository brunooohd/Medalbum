import Foundation

struct Unit: Identifiable {
    let id = UUID()
    let unitCode: String
    let description: String
    let startDateTime: String
    let endDateTime: String
    let localStartDateTime: String
    let localEndDateTime: String
    let match: Match1?
    let venue: EventVenue?
}

struct Match1: Identifiable {
    let id = UUID()
    let team1: Team1
    let team2: Team1
}

struct Team1: Identifiable {
    let id = UUID()
    let teamCode: String
    let description: String
}

struct EventVenue: Identifiable {
    let id = UUID()
    let venueCode: String
    let description: String
}
