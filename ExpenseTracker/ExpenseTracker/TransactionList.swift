//
//  TransactionList.swift
//  ExpenseTracker
//
//  Created by Diego Borrallo Herrero on 17/1/24.
//

import SwiftUI

struct TransactionList: View {
    
    @EnvironmentObject var transactionlistVM: TransactionListViewModel
    
    var body: some View {
        VStack(){
            List{
                ForEach(Array(transactionlistVM.groupTransactionsByMonth()), id: \.key){ month, transactions in
                    Section {
                        ForEach(transactions){ transaction in
                            TransactionRow(transaction: transaction)
                        }
                    } header: {
                        Text(month)
                    }
                    .listSectionSeparator(.hidden)
                }
            }
            .listStyle(.plain)
        }
        .navigationTitle("Transactions")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TransactionList_Previews: PreviewProvider{
    
    static let transactionListVM: TransactionListViewModel = {
        let transactionListVM = TransactionListViewModel()
        transactionListVM.transactions = transactionListPreviewData
        
        return transactionListVM
    }()
    
    static var previews: some View {
        
        Group{
            NavigationView{
                TransactionList()
            }
            NavigationView{
                TransactionList()
                    .preferredColorScheme(.dark)
            }
        }
        .environmentObject(transactionListVM)
    }
}
