//
//  Extensions.swift
//  MaxQ
//
//  Created by Hariharan Murugesan on 07/07/20.
//

import SwiftUI


func readableDate(_ dateString: String) -> String {
    
    let formatter = DateFormatter()
  //  formatter.timeZone = TimeZone(secondsFromGMT: 0)
    formatter.locale = Locale(identifier: "en_US_POSIX")
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    if let date = formatter.date(from: dateString) {
        formatter.dateFormat = "E, d MMM yyyy HH:mm:ss Z"
        return formatter.string(from: date)
    } else {
        return "Error"
    }
}

extension String {
    var plain: String {
        let acceptable = Set("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLKMNOPQRSTUVWXYZ1234567890#")
        return self.filter {acceptable.contains($0)}
    }
}

extension Int {
    var hashed: String{
        let value = "#\(self)"
        return value
    }

}
