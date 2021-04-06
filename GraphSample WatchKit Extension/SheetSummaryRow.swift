//
//  SheetSummaryRow.swift
//  GraphSample WatchKit Extension
//
//  Created by nak-ts on 2021/04/06.
//

import SwiftUI

struct SheetSummaryRow: View {
    var sheet: Sheet
    
    var body: some View {
        HStack {
            Image(systemName: "squareshape.split.3x3")
                .foregroundColor(.green)
            Divider()
            Text(String(sheet.dateAndTime))
        }
    }
}

struct SheetSummaryRow_Previews: PreviewProvider {
    static var previews: some View {
        let sheet = Sheet(date: Date(), row: 1, column: 1)
        SheetSummaryRow(sheet: sheet)
    }
}
