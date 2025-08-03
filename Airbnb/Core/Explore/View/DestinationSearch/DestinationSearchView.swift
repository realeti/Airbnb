//
//  DestinationSearchView.swift
//  Airbnb
//
//  Created by realeti on 19.03.2025.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Environment(ExploreViewModel.self) private var viewModel
    @Binding var show: Bool
    @State private var selectedOption: DestinationSearchOptions = .location
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numGuests = 0
    
    var body: some View {
        @Bindable var viewModel = viewModel
        
        VStack {
            SearchHeaderView(show: $show)
            
            SearchView(
                selectedOption: $selectedOption,
                show: $show
            )
            .onTapGesture {
                withAnimation(.snappy) { selectedOption = .location }
            }
            
            DateSelectionView(
                selectedOption: $selectedOption,
                startDate: $startDate,
                endDate: $endDate
            )
            .onTapGesture {
                withAnimation(.snappy) { selectedOption = .dates }
            }
            
            NumGuestsView(
                selectedOption: $selectedOption,
                numGuests: $numGuests
            )
            .onTapGesture {
                withAnimation(.snappy) { selectedOption = .guests }
            }
            
            Spacer()
        }
    }
}

#Preview {
    DestinationSearchView(
        show: .constant(false)
    )
}
