//
//  ListingDetailTextView.swift
//  Airbnb
//
//  Created by realeti on 14.03.2025.
//

import SwiftUI

struct ListingDetailTextView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Miami, Florida")
                .fontWeight(.semibold)
            
            Text("12 mi away")
                .foregroundStyle(.gray)
            
            Text("Nov 3- 10")
                .foregroundStyle(.gray)
            
            HStack(spacing: 4) {
                Text("$567")
                    .fontWeight(.semibold)
                
                Text("night")
            }
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    ListingDetailTextView()
}
