//
//  PreviewData.swift
//  ExpenseTracker
//
//  Created by Diego Borrallo Herrero on 16/1/24.
//

import Foundation
import SwiftUI

var transactionPreviewData = Transaction(id: 1, date: "24/01/2023", institution: "MediaMarkt", account: "Cuenta Principal", merchant: "Apple", amount: 11.49, type: "debit", categoryID: 001, category: "Software", isPending: false, isTransfer: false, isExpense: true, isEdited: false)

var transactionList = [Transaction](repeating: transactionPreviewData, count: 10)
