//
//  Framework.swift
//  Frameworks
//
//  Created by Oleksii Mykhailenko on 12.09.2023.
//

import Foundation

struct Framework: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let urlString: String
    let description: String
}
