//
//  MainTabView.swift
//  Airbnb
//
//  Created by realeti on 20.03.2025.
//

import SwiftUI

struct MainTabView: View {
    enum TabType {
        case explore
        case wishlists
        case profile
    }
    
    @State private var selection: TabType = .explore
    
    var body: some View {
        TabView(selection: $selection) {
            Tab("Explore", systemImage: "magnifyingglass", value: .explore) {
                ExploreView()
            }
            
            Tab("Wishlists", systemImage: "heart", value: .wishlists) {
                WishlistsView()
            }
            
            Tab("Profile", systemImage: "person", value: .profile) {
                ProfileView()
            }
        }
    }
}

#Preview {
    MainTabView()
}
