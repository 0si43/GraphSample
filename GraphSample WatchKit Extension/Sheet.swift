//
//  Sheet.swift
//  GraphSample WatchKit Extension
//
//  Created by nak-ts on 2021/04/06.
//

import Foundation

struct Sheet: Identifiable {
    var id = UUID()
    var date: Date
    var row: Int { willSet { adjustArray(row: newValue) }}
    var column: Int { willSet { adjustArray(column: newValue) }}
    var values: [[Int]]
    var dateAndTime: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .medium
        formatter.locale = Locale(identifier: "ja_JP")
        formatter.setLocalizedDateFormatFromTemplate("yMdkHms")
        return formatter.string(from: date)
    }
    
    init() {
        self.date = Date()
        self.row = 3
        self.column = 3
        let innerArray = Array(repeating: 1, count: column)
        self.values = Array(repeating: innerArray, count: row)
    }
    
    init(date: Date, row: Int, column: Int) {
        self.date = date
        self.row = row
        self.column = column
        let innerArray = Array(repeating: 1, count: column)
        self.values = Array(repeating: innerArray, count: row)
    }
    
    mutating func adjustArray(row: Int) {
        guard 0 < row, values.count < row else { return }
//        if row < values.count {
//            (row..<values.count).forEach {
//                print("delete: " + String($0))
//                values.remove(at: $0)
//            }
//        } else if values.count < row {
        (values.count..<row).forEach {_ in
            let innerArray = Array(repeating: 1, count: column)
            values.append(innerArray)
        }
//        }
    }
    
    mutating func adjustArray(column: Int) {
//        guard 0 < column, 0 < row, values[0].count < column else { return }
//        (values[0].count..<column).forEach {
//            values[$0 - 1].append(1)
//        }
    }
}
