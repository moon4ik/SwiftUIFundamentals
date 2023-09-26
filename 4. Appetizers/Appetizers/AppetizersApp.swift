//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Oleksii Mykhailenko on 20.09.2023.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}

