//
//  Array+SafeAppend.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import Foundation

extension Array {
  
  mutating func appendSafe(_ element: Element?) {
    guard let element = element else { return }
    append(element)
  }
}
