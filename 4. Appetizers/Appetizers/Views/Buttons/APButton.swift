//
//  APButton.swift
//  Appetizers
//
//  Created by Oleksii Mykhailenko on 21.09.2023.
//

import SwiftUI

struct APButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .background(.appPrimary)
            .foregroundColor(.white)
            .cornerRadius(12)
    }
}

#Preview {
    APButton(title: "Title")
}
