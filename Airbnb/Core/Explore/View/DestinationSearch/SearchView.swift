//
//  SearchView.swift
//  Airbnb
//
//  Created by realeti on 20.03.2025.
//

import SwiftUI

struct SearchView: View {
    @Environment(ExploreViewModel.self) private var viewModel
    @Binding var selectedOption: DestinationSearchOptions
    @Binding var show: Bool
    
    var body: some View {
        @Bindable var viewModel = viewModel
        
        VStack(alignment: .leading) {
            if selectedOption == .location {
                Text("Where to?")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                HStack {
                    Image(systemName: "magnifyingglass")
                        .imageScale(.small)
                    
                    TextField("Search destinations", text: $viewModel.searchLocation)
                        .font(.subheadline)
                        .onSubmit {
                            viewModel.updateListingsForLocation()
                            show.toggle()
                        }
                }
                .frame(height: 44)
                .padding(.horizontal)
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(lineWidth: 1.0)
                        .foregroundStyle(Color(.systemGray4))
                }
            } else {
                CollapsedPickerView(
                    title: "Where",
                    description: "Add destination"
                )
            }
        }
        .collapsibleStyle()
        .frame(height: selectedOption == .location ? 120 : 64)
    }
}

#Preview {
    SearchView(
        selectedOption: .constant(.location),
        show: .constant(false)
    )
}
