//
//  EmptyState.swift
//  Appetizers
//
//  Created by Oleksii Mykhailenko on 21.09.2023.
//

import SwiftUI

struct EmptyState: View {
    
    let imageSystemName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack {
                Image(systemName: imageSystemName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .padding(.bottom, 16)
                    .foregroundStyle(.gray)
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
            }
            .offset(y: -50)
        }
        
    }
}

#Preview {
    EmptyState(imageSystemName: "basket", message: "You have no items in your order.")
}
