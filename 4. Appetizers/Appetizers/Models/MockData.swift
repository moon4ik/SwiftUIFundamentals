//
//  MockData.swift
//  Appetizers
//
//  Created by Oleksii Mykhailenko on 21.09.2023.
//

import Foundation

struct MockData {
    static let sampleAppetizer = Appetizer(
        id: 0001,
        name: "Test Appetizer",
        description: "This is the description for my appetizer. It's yummy.",
        price: 9.99,
        imageURL: "",
        calories: 128,
        protein: 62,
        carbs: 34)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne = Appetizer(
        id: 0001,
        name: "Test Appetizer One",
        description: "This is the description for my appetizer. It's yummy.",
        price: 9.99,
        imageURL: "",
        calories: 128,
        protein: 62,
        carbs: 34)
    
    static let orderItemTwo = Appetizer(
        id: 0002,
        name: "Test Appetizer Two",
        description: "This is the description for my appetizer. It's yummy.",
        price: 9.99,
        imageURL: "",
        calories: 128,
        protein: 62,
        carbs: 34)
    
    static let orderItemThree = Appetizer(
        id: 0003,
        name: "Test Appetizer Three",
        description: "This is the description for my appetizer. It's yummy.",
        price: 9.99,
        imageURL: "",
        calories: 128,
        protein: 62,
        carbs: 34)
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree] 
}
