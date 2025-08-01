//
//  ListingType.swift
//  Airbnb
//
//  Created by realeti on 01.08.2025.
//

import Foundation

enum ListingType: Int, Codable, Identifiable, Hashable {
    case apartment
    case house
    case townHouse
    case villa
    
    var id: Int { rawValue }
    
    var description: String {
        switch self {
        case .apartment:
            "Apartment"
        case .house:
            "House"
        case .townHouse:
            "Town Home"
        case .villa:
            "Villa"
        }
    }
}
