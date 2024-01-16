//
//  Extensions.swift
//  ExpenseTracker
//
//  Created by Diego Borrallo Herrero on 16/1/24.
//

import Foundation
import SwiftUI

extension Color{
    static let Background = Color("Background")
    static let Icon = Color("Icon")
    static let Text = Color("Text")
    static let systemBackground = Color(uiColor: .systemBackground)
}

extension DateFormatter{
    static let allNumericEU: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        
        return formatter
    }()
}

extension String{
    func dateParsed() -> Date {
        guard let parsedDate = DateFormatter.allNumericEU.date(from: self) else { return Date() }
        
        return parsedDate
    }
}
