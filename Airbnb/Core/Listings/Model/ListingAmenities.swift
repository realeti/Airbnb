//
//  ListingAmenities.swift
//  Airbnb
//
//  Created by realeti on 01.08.2025.
//

import Foundation

enum ListingAmenities: Int, Codable, Identifiable, Hashable {
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    var id: Int { rawValue }
    
    var title: String {
        switch self {
        case .pool:
            "Pool"
        case .kitchen:
            "Kitchen"
        case .wifi:
            "Wifi"
        case .laundry:
            "Laundry"
        case .tv:
            "TV"
        case .alarmSystem:
            "Alarm System"
        case .office:
            "Office"
        case .balcony:
            "Balcony"
        }
    }
    
    var imageName: String {
        switch self {
        case .pool:
            "figure.pool.swim"
        case .kitchen:
            "fork.knife"
        case .wifi:
            "wifi"
        case .laundry:
            "washer"
        case .tv:
            "tv"
        case .alarmSystem:
            "checkerboard.shield"
        case .office:
            "pencil.and.ruler.fill"
        case .balcony:
            "building"
        }
    }
}
