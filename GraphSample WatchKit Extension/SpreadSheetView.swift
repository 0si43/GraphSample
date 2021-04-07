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
                Image(systemName: "person")
                Spacer()
                Text(String(sheet.value[0][0]))
            }
            .listRowPlatterColor(.green)
        }
        .navigationBarTitle(Text("表"))
        .onTapGesture {
            sheet.value[0][0] += 1
        }
    }
}

struct SpreadSheetView_Previews: PreviewProvider {
    static var previews: some View {
        let view = HomeView()
        SpreadSheetView(sheet: view.$sheets[0])
    }
}
