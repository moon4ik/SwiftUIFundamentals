//
//  OrderView.swift
//  Appetizers
//
//  Created by Oleksii Mykhailenko on 21.09.2023.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                if order.items.isEmpty {
                    EmptyState(
                        imageSystemName: "basket",
                        message: "You have no items in your order.\nPlease add an appetizer!")
                } else {
                    VStack {
                        List {
                            ForEach(order.items) { appetizer in
                                AppetizerListCell(appetizer: appetizer)
                            }
                            .onDelete(perform: order.deleteItems)
                        }
                        .listStyle(.grouped)
                        Button {
                            print("order placed")
                        } label: {
//                            APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                            Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                        }
                        .modifier(StandardButtonStyle())
                        .padding(.bottom, 30)
                    }
                }
            }
            .navigationTitle("🧾 Orders")
        }
    }
}

#Preview {
    OrderView()
}
