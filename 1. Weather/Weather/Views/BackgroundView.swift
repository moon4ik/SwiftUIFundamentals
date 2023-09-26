//
//  BackgroundView.swift
//  OmWeather
//
//  Created by Oleksii Mykhailenko on 11.09.2023.
//

import SwiftUI

struct BackgroundView: View {
    
    var isNight: Bool
    
    var body: some View {
//        LinearGradient(
//            gradient: Gradient(colors: [
//                isNight ? .black : .blue,
//                isNight ? .gray : .cyan]),
//            startPoint: .topLeading,
//            endPoint: .bottomTrailing)
//        .ignoresSafeArea()
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}
