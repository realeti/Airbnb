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
    private var listings: [Listing] = []
    var filteredListings: [Listing] = []
    var searchLocation = ""
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings() }
    }
    
    func fetchListings() async {
        do {
            listings = try await service.fetchListings()
            filteredListings = listings
        } catch {
            print("DEBUG: Failed to fetch listings with error: \(error.localizedDescription)")
        }
    }
    
    func updateListingsForLocation() {
        let filteredListings = listings.filter {
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state == searchLocation.lowercased()
        }
        
        self.filteredListings = filteredListings.isEmpty ? listings : filteredListings
    }
}
