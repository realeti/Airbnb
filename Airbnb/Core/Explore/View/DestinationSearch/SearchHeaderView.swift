//
//  SearchHeaderView.swift
//  Airbnb
//
//  Created by realeti on 20.03.2025.
//

import SwiftUI

struct SearchHeaderView: View {
    @Binding var show: Bool
    @Binding var destination: String
    
    var body: some View {
        HStack {
            Button {
                withAnimation(.snappy) {
                    show.toggle()
                }
            } label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.black)
            }
            
            Spacer()
            
            if !destination.isEmpty {
                Button("Clear") {
                    destination = ""
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
        show: .constant(false),
        destination: .constant("text")
    )
}
