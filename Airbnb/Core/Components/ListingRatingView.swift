//
//  ListingRatingView.swift
//  Airbnb
//
//  Created by realeti on 14.03.2025.
//

import SwiftUI

struct ListingRatingView: View {
    var body: some View {
        HStack(spacing: 2) {
            Image(systemName: "star.fill")
            
            Text("4.86")
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    ListingRatingView()
}
