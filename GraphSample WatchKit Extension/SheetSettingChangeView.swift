//
//  SheetSettingChangeView.swift
//  GraphSample WatchKit Extension
//
//  Created by nak-ts on 2021/04/09.
//

import SwiftUI

struct SheetSettingChangeView: View {
    var range = 0..<100
    @Binding var sheet: Sheet
    @State var column = 3
    
    var body: some View {
        VStack {
            Picker("row", selection: $sheet.row) {
                ForEach(range) {
                    Text(String($0))
                }
            }
            .pickerStyle(InlinePickerStyle())
            Picker("column", selection: $column) {
                ForEach(range) {
                    Text(String($0))
                }
            }
            .pickerStyle(InlinePickerStyle())
        }
    }
}

struct SheetSettingChangeView_Previews: PreviewProvider {
    static var previews: some View {
        let view = HomeView()
        SheetSettingChangeView(sheet: view.$sheets[0])
    }
}
