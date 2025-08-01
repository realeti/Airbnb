//
//  ListingItemView.swift
//  Airbnb
//
//  Created by realeti on 13.03.2025.
//

import SwiftUI

struct ListingItemView: View {    
    var body: some View {
        VStack(spacing: 8) {
            // images
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // listing details
            HStack(alignment: .top) {
                // details
                ListingDetailTextView()
                
                Spacer()
                
                //rating
                ListingRatingView()
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
