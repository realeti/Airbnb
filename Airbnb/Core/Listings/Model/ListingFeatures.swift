//
//  ListingFeatures.swift
//  Airbnb
//
//  Created by realeti on 01.08.2025.
//

import Foundation

enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    case selfCheckIn
    case superHost
    
    var id: Int { rawValue }
    
    var imageName: String {
        switch self {
        case .selfCheckIn:
            "door.left.hand.open"
        case .superHost:
            "medal"
        }
    }
    
    var title: String {
        switch self {
        case .selfCheckIn:
            "Self check-in"
        case .superHost:
            "Superhost"
        }
    }
    
    var subtitle: String {
        switch self {
        case .selfCheckIn:
            "Check yourself in with the keypad."
        case .superHost:
            "Superhosts are experienced, highly rated hosts who are comiited to providing greate stars for guests."
        }
    }
}
