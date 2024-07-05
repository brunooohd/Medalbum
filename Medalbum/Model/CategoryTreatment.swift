//
//  CategoryTreatment.swift
//  Medalbum
//
//  Created by Bruno Dias on 26/06/24.
//

import Foundation

func categoryTreatment (code: String.SubSequence) -> String {
    switch code {
    case "BK3":
       return "3x3 Basketball"
    case "ARC":
        return "Archery"
    case "GAR":
        return "Artistic Gymnastics"
    case "SWA":
        return "Artistic Swimming"
    case "ATH":
        return "Athletics"
    case "BDM":
        return "Badminton"
    case "BKB":
        return "Basketball"
    case "VBV":
        return "Beach Volleyball"
    case "BOX":
        return "Boxing"
    case "BKG":
        return "Breaking"
    case "CSL":
        return "Canoe Slalom"
    case "CSP":
        return "Canoe Sprint"
    case "BMF":
        return "Cycling BMX Freestyle"
    case "BMX":
        return "Cycling BMX Racing"
    case "MTB":
        return "Cycling Mountain Bike"
    case "CRD":
        return "Cycling Road"
    case "CTR":
        return "Cycling Track"
    case "DIV":
        return "Diving"
    case "EQU":
        return "Equestrian"
    case "FEN":
        return "Fencing"
    case "FBL":
        return "Football"
    case "GLF":
        return "Golf"
    case "HBL":
        return "Handball"
    case "HOC":
        return "Hockey"
    case "JUD":
        return "Judo"
    case "OWS":
        return "Marathon Swimming"
    case "MPN":
        return "Modern Pentathlon"
    case "GRY":
        return "Rhythmic Gymnastics"
    case "ROW":
        return "Rowing"
    case "RU7":
        return "Rugby Sevens"
    case "SAL":
        return "Sailing"
    case "SHO":
        return "Shooting"
    case "SKB":
        return "Skateboarding"
    case "CLB":
        return "Sport Climbing"
    case "SRF":
        return "Surfing"
    case "SWM":
        return "Swimming"
    case "TTE":
        return "Table Tennis"
    case "TKW":
        return "Taekwondo"
    case "TEN":
        return "Tennis"
    case "GTR":
        return "Trampoline Gymnastics"
    case "TRI":
        return "Triathlon"
    case "VVO":
        return "Volleyball"
    case "WPO":
        return "Water Polo"
    case "WLF":
        return "Weightlifting"
    case "WRE":
        return "Wrestling"
    default:
        return "" // Handle unknown codes (optional)
    }
}
