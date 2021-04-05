//
//  AllSheetsView.swift
//  GraphSample WatchKit Extension
//
//  Created by nak-ts on 2021/04/05.
//

import SwiftUI

struct AllSheetsView: View {
    var body: some View {
        List {
            NavigationLink(destination: SpreadSheetView()) {
                HStack {
                    Spacer()
                    Image(systemName: "plus.circle")
                    Spacer()
                }
            }
            .listRowPlatterColor(.gray)
        }
    .navigationTitle("All Sheets")
    }
}

struct AllSheetsView_Previews: PreviewProvider {
    static var previews: some View {
        AllSheetsView()
    }
}
