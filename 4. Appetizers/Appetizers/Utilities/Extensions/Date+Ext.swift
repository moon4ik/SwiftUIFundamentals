//
//  Date+Ext.swift
//  Appetizers
//
//  Created by Oleksii Mykhailenko on 22.09.2023.
//

import Foundation

extension Date {
    
    var eighteenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: .now)!
    }
    
    var oneHundredTenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -110, to: .now)!
    }
}
