//
//  NumGuestsView.swift
//  Airbnb
//
//  Created by realeti on 20.03.2025.
//

import SwiftUI

struct NumGuestsView: View {
    @Binding var selectedOption: DestinationSearchOptions
    @Binding var numGuests: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            if selectedOption == .guests {
                Text("Who's coming?")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Stepper {
                    Text("\(numGuests) Adults")
                } onIncrement: {
                    numGuests += 1
                } onDecrement: {
                    guard numGuests > 0 else { return }
                    numGuests -= 1
                }
            } else {
                CollapsedPickerView(
                    title: "Who",
                    description: "Add guests"
                )
            }
        }
        .collapsibleStyle()
        .frame(height: selectedOption == .guests ? 120: 64)
    }
}

#Preview {
    @Previewable @State var numGuests = 0
    
    NumGuestsView(
        selectedOption: .constant(.guests),
        numGuests: $numGuests
    )
}
