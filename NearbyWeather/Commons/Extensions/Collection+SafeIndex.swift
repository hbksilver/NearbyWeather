//
//  Collection+SafeIndex.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import Foundation

extension Collection {
  subscript (safe index: Index) -> Element? {
      indices.contains(index) ? self[index] : nil
  }
}
