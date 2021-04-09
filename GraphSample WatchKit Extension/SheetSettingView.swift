//
//  SheetSettingView.swift
//  GraphSample WatchKit Extension
//
//  Created by nak-ts on 2021/04/09.
//

import SwiftUI

struct SheetSettingView: View {
    var body: some View {
        VStack {
            Spacer()
            Button(action: {
                print("tapped")
            }) {
                Text("Change Setting")
                    .padding()
            }
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 1)
            )
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
        SheetSettingView()
    }
}
