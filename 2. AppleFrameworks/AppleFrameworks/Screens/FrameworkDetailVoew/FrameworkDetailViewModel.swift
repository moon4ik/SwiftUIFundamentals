//
//  FrameworkDetailViewModel.swift
//  AppleFrameworks
//
//  Created by Oleksii Mykhailenko on 22.09.2023.
//

import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
 
    let framework: Framework
    @Published var isShowingSafariView: Bool
    
    
    init(framework: Framework, isShowingSafariView: Bool = false) {
        self.framework = framework
        self.isShowingSafariView = isShowingSafariView
    }
}
