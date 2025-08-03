//
//  SearchHeaderView.swift
//  Airbnb
//
//  Created by realeti on 20.03.2025.
//

import SwiftUI

struct SearchHeaderView: View {
    @Environment(ExploreViewModel.self) private var viewModel
    @Binding var show: Bool
    
    var body: some View {
        HStack {
            Button {
                withAnimation(.snappy) {
                    viewModel.updateListingsForLocation()
                    show.toggle()
                }
            } label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.black)
            }
            
            Spacer()
            
            if !viewModel.searchLocation.isEmpty {
                Button("Clear") {
                    viewModel.searchLocation = ""
                }
                .foregroundStyle(.black)
                .font(.subheadline)
                .fontWeight(.semibold)
            }
        }
        .padding()
    }
}

#Preview {
    SearchHeaderView(
        show: .constant(false)
    )
}
