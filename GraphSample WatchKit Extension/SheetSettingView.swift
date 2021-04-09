//
//  SheetSettingView.swift
//  GraphSample WatchKit Extension
//
//  Created by nak-ts on 2021/04/09.
//

import SwiftUI

struct SheetSettingView: View {
    @Binding var sheet: Sheet
    @State private var isShowingSheet = false
    
    var body: some View {
        VStack {
            Spacer()
            Button(action: {
                self.isShowingSheet.toggle()
            }) {
                Text("Change Setting")
                    .padding()
            }
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 1)
            )
            .sheet(isPresented: $isShowingSheet) {
                SheetSettingChangeView(sheet: $sheet)
            }
            Spacer()
            Spacer()
            Spacer()
            Spacer()
        }
        .navigationBarTitle(Text("Setting"))
    }
}

struct SheetSettingView_Previews: PreviewProvider {
    static var previews: some View {
        let view = HomeView()
        SheetSettingView(sheet: view.$sheets[0])
    }
}
