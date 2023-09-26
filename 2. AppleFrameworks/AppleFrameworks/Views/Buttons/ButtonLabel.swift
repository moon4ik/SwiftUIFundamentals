//
//  ButtonLabel.swift
//  AppleFrameworks
//
//  Created by Oleksii Mykhailenko on 15.09.2023.
//

import SwiftUI

struct ButtonLabel: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.blue.gradient)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLabel(title: "Title")
    }
}
