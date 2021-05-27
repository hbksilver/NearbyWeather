//
//  DistanceSpeedUnit.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import Foundation

enum DistanceVelocityUnitValue: Int, CaseIterable, Codable {
  case kilometres
  case miles
}

struct DistanceVelocityUnitOption: Codable, PreferencesOption {
  static let availableOptions = [DistanceVelocityUnitOption(value: .kilometres),
                                 DistanceVelocityUnitOption(value: .miles)]
  
  typealias PreferencesOptionType = DistanceVelocityUnitValue
  
  private lazy var count = {
    return DistanceVelocityUnitValue.allCases.count
  }()
  
  var value: DistanceVelocityUnitValue
  
  init(value: DistanceVelocityUnitValue) {
    self.value = value
  }
  
  init?(rawValue: Int) {
    guard let value = DistanceVelocityUnitValue(rawValue: rawValue) else {
      return nil
    }
    self.init(value: value)
  }
  
  var stringValue: String {
    switch value {
    case .kilometres:
      return R.string.localizable.metric()
    case .miles:
      return R.string.localizable.imperial()
    }
  }
}
