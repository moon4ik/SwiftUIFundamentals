//
//  FrameworkGridItemView.swift
//  AppleFrameworks
//
//  Created by Oleksii Mykhailenko on 15.09.2023.
//

import SwiftUI

struct FrameworkGridItemView: View {
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 60, height: 60)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .foregroundColor(Color(.label))
                .padding(.leading, 8)
        }
    }
}

struct FrameworkGridItemView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridItemView(framework: MockData.sampleFramework)
    }
}
