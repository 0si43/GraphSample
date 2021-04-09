//
//  AllSheetsView.swift
//  GraphSample WatchKit Extension
//
//  Created by nak-ts on 2021/04/05.
//

import SwiftUI

struct HomeView: View {
    @State var sheets = [Sheet()]
    
    var body: some View {
        return List {
            ForEach(0..<sheets.count, id: \.self) { index in
                NavigationLink(destination: SpreadSheetTabView(sheet: self.$sheets[index])) {
                    SheetThumbnailRow(dateAndTime: self.sheets[index].dateAndTime)
                }
            }
            .onDelete { indexSet in
                self.sheets.remove(atOffsets: indexSet)
            }
            HStack {
                Spacer()
                Image(systemName: "plus.circle")
                Spacer()
            }
            .listRowPlatterColor(.red)
            .onTapGesture {
                self.sheets.append(Sheet())
            }
        }
        .navigationTitle("All Sheets")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
