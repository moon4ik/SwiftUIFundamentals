//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Oleksii Mykhailenko on 20.09.2023.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    
    @Published var scannedCode = ""
    @Published var alerItem: AlertItem?
    
    var statusText: String {
        scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }
    
    var statusTextColor: Color {
        scannedCode.isEmpty ? .gray : .green
    }
}
