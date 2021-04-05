//
//  SpreadSheetView.swift
//  GraphSample WatchKit Extension
//
//  Created by nak-ts on 2021/04/05.
//

import SwiftUI

struct SpreadSheetView: View {
    var number = 0
    
    var body: some View {
        List {
            HStack {
                Image(systemName: "person")
                Spacer()
                Text(String(number))
            }
            .listRowPlatterColor(.green)
            HStack {
                Image(systemName: "person")
                Spacer()
                Text(String(number))
            }
            .listRowPlatterColor(.blue)
            HStack {
                Image(systemName: "person")
                Spacer()
                Text(String(number))
            }
            .listRowPlatterColor(.red)
            HStack {
                Image(systemName: "person")
                Spacer()
                Text(String(number))
            }
            .listRowPlatterColor(.yellow)
        }
        .navigationBarTitle(Text("グラフ"))
    }
}

struct SpreadSheetView_Previews: PreviewProvider {
    static var previews: some View {
        SpreadSheetView()
    }
}
