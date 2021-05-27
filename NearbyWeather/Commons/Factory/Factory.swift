//
//  Factory.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import Foundation

protocol FactoryFunction {
  associatedtype InputType
  associatedtype ResultType
  
  static func make(fromType type: InputType) -> ResultType
}

enum Factory {}
