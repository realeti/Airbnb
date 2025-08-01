//
//  ListingDetailTextView.swift
//  Airbnb
//
//  Created by realeti on 14.03.2025.
//

import SwiftUI

struct ListingDetailTextView: View {
    let listing: Listing
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(listing.city), \(listing.state)")
                .fontWeight(.semibold)
            
            Text("12 mi away")
                .foregroundStyle(.gray)
            
            Text("Nov 3- 10")
                .foregroundStyle(.gray)
            
            HStack(spacing: 4) {
                Text("$\(listing.pricePerNight)")
                    .fontWeight(.semibold)
                
                Text("night")
            }
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    ListingDetailTextView(listing: DeveloperPreview.shared.listings[0])
}
