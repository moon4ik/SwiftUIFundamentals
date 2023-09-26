//
//  User.swift
//  Appetizers
//
//  Created by Oleksii Mykhailenko on 21.09.2023.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var isExtraNapkins = false
    var isFrequentRefills = false
}
