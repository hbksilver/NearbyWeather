//
//  PreferencesOption.swift
//  NearbyWeather
////  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import Foundation

protocol PreferencesOption {
  associatedtype PreferencesOptionType
  var value: PreferencesOptionType { get set }
  init(value: PreferencesOptionType)
  init?(rawValue: Int)
  var stringValue: String { get }
}
