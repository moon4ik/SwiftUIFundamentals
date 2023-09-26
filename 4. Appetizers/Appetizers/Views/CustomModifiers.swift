//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Oleksii Mykhailenko on 22.09.2023.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.appPrimary)
            .controlSize(.large)
    }
}

//extension View {
//    func standardButtonStyle() -> some View {
//        self.modifier(StandardButtonStyle())
//    }
//}
