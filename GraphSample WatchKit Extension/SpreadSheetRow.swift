//
//  SpreadSheetRow.swift
//  GraphSample WatchKit Extension
//
//  Created by nak-ts on 2021/04/07.
//

import SwiftUI

struct SpreadSheetRow: View {
    var rowNumber: Int
    var range = 0..<100
    @Binding var values: [[Int]]
    var isEditable: Bool
    
    var body: some View {
        HStack {
            Text(String(rowNumber))
            Divider()
            Spacer()
            ForEach(0..<values[rowNumber - 1].count) { columnNumber in
                if (self.isEditable) {
                    let targetValue = $values[rowNumber - 1][columnNumber]
                    Picker("", selection: targetValue) {
                        ForEach(range) {
                            Text(String($0))
                        }
                    }
                    .pickerStyle(InlinePickerStyle())
                    .labelsHidden()
                } else {
                    let targetValue = values[rowNumber - 1][columnNumber]
                    Text(String(targetValue))
                    Spacer()
                }
            }
        }
    }
}

struct SpreadSheetRow_Previews: PreviewProvider {
    static var previews: some View {
        let view = HomeView()
        SpreadSheetRow(rowNumber: 1, values: view.$sheets[0].values, isEditable: true)
        SpreadSheetRow(rowNumber: 1, values: view.$sheets[0].values, isEditable: false)
    }
}
