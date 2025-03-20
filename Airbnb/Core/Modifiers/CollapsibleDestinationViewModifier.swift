//
//  CollapsibleDestinationViewModifier.swift
//  Airbnb
//
//  Created by realeti on 20.03.2025.
//

import SwiftUI

struct CollapsibleDestinationViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
    }
}

extension View {
    func collapsibleStyle() -> some View {
        self.modifier(CollapsibleDestinationViewModifier())
    }
}
