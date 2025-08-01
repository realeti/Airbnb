//
//  ExploreView.swift
//  Airbnb
//
//  Created by realeti on 13.03.2025.
//

import SwiftUI

struct ExploreView: View {
    @State private var viewModel = ExploreViewModel(service: ExploreService())
    @State private var showDestionationSearchView = false
    
    var body: some View {
        NavigationStack {
            if showDestionationSearchView {
                DestinationSearchView(show: $showDestionationSearchView)
            } else {
                ScrollView {
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestionationSearchView.toggle()
                            }
                        }
                    
                    scrollItems()
                }
                .navigationDestination(for: Listing.self) { listing in
                    ListingDetailView(listing: listing)
                        .toolbar(.hidden)
                }
            }
        }
    }
    
    @ViewBuilder
    func scrollItems() -> some View {
        LazyVStack(spacing: 32) {
            ForEach(viewModel.listings) { listing in
                NavigationLink(value: listing) {
                    ListingItemView(listing: listing)
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
