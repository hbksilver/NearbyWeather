//
//  Date+String.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import Foundation

extension Date {
  
  var shortDateTimeString: String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .short
    dateFormatter.timeStyle = .short
    
    return dateFormatter.string(from: self)
  }
}
