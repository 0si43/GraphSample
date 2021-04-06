//
//  AllSheetsView.swift
//  GraphSample WatchKit Extension
//
//  Created by nak-ts on 2021/04/05.
//

import SwiftUI

struct HomeView: View {
    @State var sheets = [Sheet]()
    
    var body: some View {
        return List {
            ForEach(0..<sheets.count, id: \.self) {
                SheetSummaryRow(sheet: sheets[$0])
            }
            NavigationLink(destination: SpreadSheetView()) {
                HStack {
                    Spacer()
                    Image(systemName: "plus.circle")
                    Spacer()
                }
            }
            .listRowPlatterColor(.red)
            .onTapGesture {
                self.sheets.append(Sheet(date: Date(), row: 1, column: 1))
            }
        }
        .navigationTitle("All Sheets")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
