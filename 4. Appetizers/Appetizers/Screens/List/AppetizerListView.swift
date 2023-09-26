//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Oleksii Mykhailenko on 21.09.2023.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var vm = AppetizerListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(vm.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .listRowSeparator(.hidden)
                        .onTapGesture {
                            vm.selectedAppetizer = appetizer
                            vm.isShowingDetail = true
                        }
                }
                .listStyle(.grouped)
                .navigationTitle("🍟 Appetizers")
                .disabled(vm.isShowingDetail)
            }
            .task {
                vm.getAppetizers()
            }
            .blur(radius: vm.isShowingDetail ? 20 : 0)
            if vm.isShowingDetail {
                AppetizerDetailView(
                    appetizer: vm.selectedAppetizer!,
                    isShowingDetail: $vm.isShowingDetail)
            }
            if vm.isLoading {
                LoadingView()
            }
        }
        .alert(item: $vm.alertItem) { alertItem in
            Alert(
                title: alertItem.title,
                message: alertItem.message,
                dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AppetizerListView()
}
