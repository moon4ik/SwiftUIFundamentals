//
//  ContentView.swift
//  OmWeather
//
//  Created by Oleksii Mykhailenko on 11.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack {
                CityNameView(cityName: "Cupertino, CA")
                CurrentWeatherView(
                    imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                    temperature: 27)
                HStack(alignment: .center, spacing: 20) {
                    WeatherDayView(
                        dayOfWeek: "MON",
                        imageName: "cloud.sun.fill",
                        temperature: 27)
                    WeatherDayView(
                        dayOfWeek: "TUE",
                        imageName: "sun.max.fill",
                        temperature: 31)
                    WeatherDayView(
                        dayOfWeek: "WED",
                        imageName: "cloud.rain.fill",
                        temperature: 27)
                    WeatherDayView(
                        dayOfWeek: "THU",
                        imageName: "cloud.bolt.rain.fill",
                        temperature: 15)
                    WeatherDayView(
                        dayOfWeek: "FRI",
                        imageName: "cloud.sun.rain.fill",
                        temperature: 17)
                }.padding()
                Spacer()
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(
                        title: "Change Day Time",
                        textColor: .blue,
                        backgroundColor: .white)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
