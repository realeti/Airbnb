//
//  ExploreView.swift
//  Airbnb
//
//  Created by realeti on 13.03.2025.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                SearchAndFilterBar()
                scrollItems()
            }
            .navigationDestination(for: Int.self) { listing in
                ListingDetailView()
                    .toolbar(.hidden)
            }
        }
    }
    
    @ViewBuilder
    func scrollItems() -> some View {
        LazyVStack(spacing: 32) {
            ForEach(0 ... 10, id: \.self) { listing in
                NavigationLink(value: listing) {
                    ListingItemView()
                        .frame(height: 400)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
