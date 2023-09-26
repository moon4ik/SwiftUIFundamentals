//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Oleksii Mykhailenko on 15.09.2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @ObservedObject var vm: FrameworkDetailViewModel
    
    var body: some View {
        VStack {
            FrameworkGridItemView(framework: vm.framework)
            Text(vm.framework.description)
                .font(.body)
                .padding()
            Spacer()
            Link(destination: URL(string: vm.framework.urlString) ?? URL(string: "www.apple.com")!, label: {
                ButtonLabel(title: "Learn More")
            })
//            Button {
//                vm.isShowingSafariView = true
//            } label: {
//                Label("Learn More", systemImage: "book.fill")
//            }
//            .buttonStyle(.bordered)
//            .controlSize(.large)
//            .buttonBorderShape(.capsule)
//            .tint(.blue)
        }
//        .sheet(isPresented: $vm.isShowingSafariView) {
//            SafariView(url: URL(string: vm.framework.urlString) ?? URL(string: "www.apple.com")!)
//        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(vm: FrameworkDetailViewModel(framework: MockData.sampleFramework))
    }
}
