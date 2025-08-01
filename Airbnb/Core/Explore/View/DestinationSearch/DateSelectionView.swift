//
//  DateSelectionView.swift
//  Airbnb
//
//  Created by realeti on 20.03.2025.
//

import SwiftUI

struct DateSelectionView: View {
    @Binding var selectedOption: DestinationSearchOptions
    @Binding var startDate: Date
    @Binding var endDate: Date
    
    var body: some View {
        VStack(alignment: .leading) {
            if selectedOption == .dates {
                Text("When's your trip?")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                VStack {
                    DatePicker("From", selection: $startDate, displayedComponents: .date)
                    
                    Divider()
                    
                    DatePicker("To", selection: $endDate, displayedComponents: .date)
                }
                .foregroundStyle(.gray)
                .font(.subheadline)
                .fontWeight(.semibold)
            } else {
                CollapsedPickerView(
                    title: "When",
                    description: "Add dates"
                )
            }
        }
        .collapsibleStyle()
        .frame(height: selectedOption == .dates ? 180: 64)
    }
}

#Preview {
    DateSelectionView(
        selectedOption: .constant(.dates),
        startDate: .constant(Date()),
        endDate: .constant(Date())
    )
}
