//
//  ExploreViewModel.swift
//  Airbnb
//
//  Created by realeti on 01.08.2025.
//

import Foundation

@Observable
class ExploreViewModel {
    private let service: ExploreService
    var listings: [Listing] = []
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings() }
    }
    
    func fetchListings() async {
        do {
            listings = try await service.fetchListings()
        } catch {
            print("DEBUG: Failed to fetch listings with error: \(error.localizedDescription)")
        }
    }
}
