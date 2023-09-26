//
//  AppetizerTabView.swift
//  Appetizers
//
//  Created by Oleksii Mykhailenko on 20.09.2023.
//

import SwiftUI

struct AppetizerTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem { Label("Home", systemImage: "house") }
            AccountView()
                .tabItem { Label("Account", systemImage: "person") }
            OrderView()
                .tabItem { Label("Order", systemImage: "cart") }
                .badge(order.items.count)
        }
        .tint(.appPrimary)
    }
}

#Preview {
    AppetizerTabView()
}
