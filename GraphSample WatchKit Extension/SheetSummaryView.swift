//
//  SheetSummaryView.swift
//  GraphSample WatchKit Extension
//
//  Created by nak-ts on 2021/04/06.
//

import SwiftUI

struct SheetSummaryView: View {
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

struct SheetSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SheetSummaryView(sheet: Sheet(date: Date(), row: 1, column: 1))
    }
}
