//
//  ListingRatingView.swift
//  Airbnb
//
//  Created by realeti on 14.03.2025.
//

import SwiftUI

struct ListingRatingView: View {
    let listing: Listing
    
    var body: some View {
        HStack(spacing: 2) {
            Image(systemName: "star.fill")
            
            Text(String(format: "%.2f", listing.rating))
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    ListingRatingView(listing: DeveloperPreview.shared.listings[0])
}
