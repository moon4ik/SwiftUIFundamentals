//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Oleksii Mykhailenko on 15.09.2023.
//

import Foundation
import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
