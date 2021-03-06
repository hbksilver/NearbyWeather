//
//  Constants+Values.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import Foundation

extension Constants {
  enum Values {}
}

extension Constants.Values {
  
  enum AppVersion {
    static let kVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? Constants.Messages.kUndefined
    static let kBuild = Bundle.main.infoDictionary?["CFBundleVersion"] as? String ?? Constants.Messages.kUndefined
    static let kVersionBuildString = "Version \(kVersion) Build #\(kBuild)"
  }
}

extension Constants.Values {
  
  enum TemperatureName {
    static let kCelsius = "Celsius"
    static let kFahrenheit = "Fahrenheit"
    static let kKelvin = "Kelvin"
  }
}

extension Constants.Values {
  
  enum TemperatureUnit {
    static let kCelsius = "°C"
    static let kFahrenheit = "°F"
    static let kKelvin = "K"
  }
}
