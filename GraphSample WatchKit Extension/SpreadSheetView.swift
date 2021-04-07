//
//  SpreadSheetView.swift
//  GraphSample WatchKit Extension
//
//  Created by nak-ts on 2021/04/05.
//

import SwiftUI

struct SpreadSheetView: View {
    @Binding var sheet: Sheet
    private var sumColumns: [Int] {
        var sums = [Int]()
        (0..<sheet.column).forEach { column in
            var sum = 0
            (0..<sheet.row).forEach { row in
                sum += sheet.values[row][column]
            }
            sums.append(sum)
        }
        
        return sums
    }
    
    var body: some View {
        List {
            HStack {
                Text("  ")
                Divider()
                Spacer()
                ForEach(0..<sheet.column) { index in
                    Text(String(index + 1))
                    Spacer()
                }
            }
            .listRowPlatterColor(.green)
            ForEach(0..<sheet.row) { rowNumber in
                HStack {
                    Text(String(rowNumber + 1))
                    Divider()
                    Spacer()
                    ForEach(0..<sheet.column) { columnNumber in
                        Text(String(sheet.values[rowNumber][columnNumber]))
                            .onTapGesture {
                                sheet.values[rowNumber][columnNumber] += 1
                            }
                        Spacer()
                    }
                }
            }
            HStack {
                Text("  ")
                Divider()
                Spacer()
                let sums = sumColumns
                ForEach(0..<sums.count) { index in
                    Text(String(sums[index]))
                    Spacer()
                }
            }
            .listRowPlatterColor(.blue)
        }
        .navigationBarTitle(Text("Sheet"))
    }
}

struct SpreadSheetView_Previews: PreviewProvider {
    static var previews: some View {
        let view = HomeView()
        SpreadSheetView(sheet: view.$sheets[0])
    }
}
