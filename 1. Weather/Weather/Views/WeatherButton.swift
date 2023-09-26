//
//  WeatherButton.swift
//  OmWeather
//
//  Created by Oleksii Mykhailenko on 11.09.2023.
//

import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor.gradient)
            .foregroundColor(textColor)
            .font(.system(size: 18, weight: .medium, design: .default))
            .cornerRadius(8)
    }
}
