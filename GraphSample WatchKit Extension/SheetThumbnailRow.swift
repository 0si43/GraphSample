//
//  SheetSummaryRow.swift
//  GraphSample WatchKit Extension
//
//  Created by nak-ts on 2021/04/06.
//

import SwiftUI

struct SheetThumbnailRow: View {
    var dateAndTime: String
    
    var body: some View {
        HStack {
            Image(systemName: "squareshape.split.3x3")
                .foregroundColor(.green)
            Divider()
            Text(dateAndTime)
        }
    }
}

struct SheetThumbnail_Previews: PreviewProvider {
    static var previews: some View {
        let sheet = Sheet()
        SheetThumbnailRow(dateAndTime: sheet.dateAndTime)
    }
}

