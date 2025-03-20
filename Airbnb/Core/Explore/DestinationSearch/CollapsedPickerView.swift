//
//  CollapsedPickerView.swift
//  Airbnb
//
//  Created by realeti on 20.03.2025.
//

import SwiftUI

struct CollapsedPickerView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }
            .font(.subheadline)
            .fontWeight(.semibold)
        }
    }
}

#Preview {
    CollapsedPickerView(title: "Title", description: "Description")
}
