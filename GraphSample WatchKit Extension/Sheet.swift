//
//  Sheet.swift
//  GraphSample WatchKit Extension
//
//  Created by nak-ts on 2021/04/06.
//

import Foundation

struct Sheet {
    var date: Date
    var row: Int
    var column: Int
    var value: [[Int]]
    var dateAndTime: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .medium
        return formatter.string(from: date)
    }
    
    init(date: Date, row: Int, column: Int) {
        self.date = date
        self.row = row
        self.column = column
        let innerArray = Array(repeating: 1, count: column)
        self.value = Array(repeating: innerArray, count: row)
    }
}
