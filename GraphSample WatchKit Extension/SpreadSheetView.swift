//
//  SpreadSheetView.swift
//  GraphSample WatchKit Extension
//
//  Created by nak-ts on 2021/04/05.
//

import SwiftUI

struct SpreadSheetView: View {
    @Binding var sheet: Sheet
    
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
                        Text(String(sheet.value[rowNumber][columnNumber]))
                            .onTapGesture {
                                sheet.value[rowNumber][columnNumber] += 1
                            }
                        Spacer()
                    }
                }
            }
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
