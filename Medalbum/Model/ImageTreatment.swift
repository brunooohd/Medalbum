//
//  ImageTreatment.swift
//  Medalbum
//
//  Created by Bruno Dias on 03/07/24.
//

import Foundation
import SwiftUI


func imageTreatment (code: String.SubSequence) -> Image {
    switch code {
    case "BK3":
        return Image(systemName: "figure.basketball")
    case "ARC":
        return Image(systemName: "figure.archery")
    case "GAR":
        return Image(systemName: "figure.gymnastics")
    case "SWA":
        return Image(systemName: "figure.synchronized.swimming")
    case "ATH":
        return Image(systemName: "figure.run")
    case "BDM":
        return Image(systemName: "figure.badminton")
    case "BKB":
        return Image(systemName: "figure.basketball")
    case "VBV":
        return Image(systemName: "figure.beachvolleyball")
    case "BOX":
        return Image(systemName: "figure.boxing")
    case "BKG":
        return Image(systemName: "figure.breakdancing")
    case "CSL":
        return Image(systemName: "figure.canoe.slalom")
    case "CSP":
        return Image(systemName: "figure.canoe.sprint")
    case "BMF":
        return Image(systemName: "bicycle")
    case "BMX":
        return Image(systemName: "bicycle")
    case "MTB":
        return Image(systemName: "bicycle")
    case "CRD":
        return Image(systemName: "bicycle")
    case "CTR":
        return Image(systemName: "bicycle")
    case "DIV":
        return Image(systemName: "figure.diving")
    case "EQU":
        return Image(systemName: "figure.equestrian")
    case "FEN":
        return Image(systemName: "figure.fencing")
    case "FBL":
        return Image(systemName: "figure.soccer")
    case "GLF":
        return Image(systemName: "figure.golf")
    case "HBL":
        return Image(systemName: "figure.handball")
    case "HOC":
        return Image(systemName: "figure.hockey")
    case "JUD":
        return Image(systemName: "figure.socialdance")
    case "OWS":
        return Image(systemName: "figure.swimming")
    case "MPN":
        return Image(systemName: "figure.pentathlon")
    case "GRY":
        return Image(systemName: "figure.rhythmic.gymnastics")
    case "ROW":
        return Image(systemName: "figure.rowing")
    case "RU7":
        return Image(systemName: "figure.rugby")
    case "SAL":
        return Image(systemName: "figure.sailing")
    case "SHO":
        return Image(systemName: "figure.shooting")
    case "SKB":
        return Image(systemName: "figure.skateboarding")
    case "CLB":
        return Image(systemName: "figure.rockclimbing")
    case "SRF":
        return Image(systemName: "figure.surfing")
    case "SWM":
        return Image(systemName: "figure.swimming")
    case "TTE":
        return Image(systemName: "figure.tabletennis")
    case "TKW":
        return Image(systemName: "figure.taekwondo")
    case "TEN":
        return Image(systemName: "figure.tennis")
    case "GTR":
        return Image(systemName: "figure.gymnastics")
    case "TRI":
        return Image(systemName: "figure.triathlon")
    case "VVO":
        return Image(systemName: "figure.volleyball")
    case "WPO":
        return Image(systemName: "figure.waterpolo")
    case "WLF":
        return Image(systemName: "figure.weightlifting")
    case "WRE":
        return Image(systemName: "figure.wrestling")
    default:
        return Image(systemName: "questionmark") // Handle unknown codes with a default icon
    }
}
