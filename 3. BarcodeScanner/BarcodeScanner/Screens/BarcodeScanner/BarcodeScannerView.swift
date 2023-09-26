//
//  BarcodeScannerView.swift
//  BarcodeScanner
//
//  Created by Oleksii Mykhailenko on 18.09.2023.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @StateObject var vm = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationView {
            VStack { 
                ScannerView(scannedCode: $vm.scannedCode, 
                            alertItem: $vm.alerItem)
                    .frame(maxHeight: 200)
                Spacer().frame(height: 60)
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                Text(vm.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(vm.statusTextColor)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $vm.alerItem) { alertItem in
                Alert(
                    title: alertItem.title,
                    message: alertItem.message,
                    dismissButton: alertItem.dismissButton)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
