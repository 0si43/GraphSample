//
//  SpreadSheetRow.swift
//  GraphSample WatchKit Extension
//
//  Created by nak-ts on 2021/04/07.
//

import SwiftUI

struct SpreadSheetRow: View {
    var rowNumber: Int
    @State var temp = 0.0
    @Binding var values: [[Int]]
    
    var body: some View {
//        HStack {
//            Text(String(rowNumber))
//            Divider()
//            Spacer()
//            ForEach(0..<values[rowNumber - 1].count) { columnNumber in
//                Text(String(values[rowNumber - 1][columnNumber]))
//                    .onTapGesture {
//                        values[rowNumber - 1][columnNumber] += 1
//                    }
//                Spacer()
//            }
//        }
        Text(String(temp))
            .focusable()
            .digitalCrownRotation($temp,
                                  from: 0.0,
                                  through: 15.0,
                                  by: 1.0,
                                  sensitivity: .medium,
                                  isContinuous: false,
                                  isHapticFeedbackEnabled: true)
    }
}

struct SpreadSheetRow_Previews: PreviewProvider {
    static var previews: some View {
        let view = HomeView()
        SpreadSheetRow(rowNumber: 0, values: view.$sheets[0].values)
    }
}
