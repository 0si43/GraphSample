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
        SheetSummaryView(sheet: sheet)
    }
}

struct SheetSummaryRow_Previews: PreviewProvider {
    static var previews: some View {
        let sheet = Sheet(date: Date(), row: 1, column: 1)
        SheetSummaryRow(sheet: sheet)
    }
}
