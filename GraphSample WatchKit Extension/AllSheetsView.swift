//
//  AllSheetsView.swift
//  GraphSample WatchKit Extension
//
//  Created by nak-ts on 2021/04/05.
//

import SwiftUI

struct AllSheetsView: View {
    var body: some View {
        NavigationLink(destination: SpreadSheetView()) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .navigationTitle("All Sheets")
    }
}

struct AllSheetsView_Previews: PreviewProvider {
    static var previews: some View {
        AllSheetsView()
    }
}
