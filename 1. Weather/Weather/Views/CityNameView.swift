//
//  CityNameView.swift
//  OmWeather
//
//  Created by Oleksii Mykhailenko on 11.09.2023.
//

import SwiftUI

struct CityNameView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}
