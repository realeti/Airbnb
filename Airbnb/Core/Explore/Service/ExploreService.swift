//
//  ExploreService.swift
//  Airbnb
//
//  Created by realeti on 01.08.2025.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
