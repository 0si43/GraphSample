//
//  SpreadSheetTabView.swift
//  GraphSample WatchKit Extension
//
//  Created by nak-ts on 2021/04/09.
//

import SwiftUI

struct SpreadSheetTabView: View {
    @Binding var sheet: Sheet
    
    var body: some View {
        TabView {
            SpreadSheetView(sheet: $sheet)
            SheetSettingView()
        }
    }
}

struct SpreadSheetTabView_Previews: PreviewProvider {
    static var previews: some View {
        let view = HomeView()
        SpreadSheetTabView(sheet: view.$sheets[0])
    }
}
