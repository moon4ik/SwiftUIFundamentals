//
//  LoadingView.swift
//  Appetizers
//
//  Created by Oleksii Mykhailenko on 21.09.2023.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = UIColor.appPrimary
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
}

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
//            ActivityIndicator()
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle())
                .tint(.appPrimary)
//                .scaleEffect(2)
        }
    }
}

#Preview {
    LoadingView()
}
