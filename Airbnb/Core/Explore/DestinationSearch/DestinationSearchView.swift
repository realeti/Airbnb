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
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOption: DestinationSearchOptions = .location
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numGuests = 0
    
    var body: some View {
        VStack {
            SearchHeaderView(
                show: $show,
                destination: $destination
            )
            
            SearchView(
                selectedOption: $selectedOption,
                destination: $destination
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
    DestinationSearchView(show: .constant(false))
}
