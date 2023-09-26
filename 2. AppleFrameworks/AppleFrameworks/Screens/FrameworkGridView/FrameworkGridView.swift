//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Oleksii Mykhailenko on 12.09.2023.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var vm = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: vm.columns) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameworkGridItemView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle(" SDK")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(vm: FrameworkDetailViewModel(framework: framework))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
