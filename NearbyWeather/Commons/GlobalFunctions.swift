//
//  GlobalFunctions.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import Foundation
import Firebase

enum DebugMessageType: String {
  case info = "ℹ️"
  case warning = "⚠️"
  case error = "💥"
}

func printDebugMessage(domain: String, message: String, type: DebugMessageType = .info) {
  guard !BuildEnvironment.isReleaseEvironment() else {
    return
  }
  debugPrint(
    type
      .rawValue
      .append(contentsOf: domain, delimiter: .space)
      .append(contentsOf: message, delimiter: .custom(string: " : "))
  )
}

func reportNonFatalError(_ error: NSError) {
  Crashlytics.crashlytics().record(error: error)
}

func reportCustomNonFatalError(for domain: String, message: String) {
  let error = NSError(
    domain: domain,
    code: -1,
    userInfo: ["message": message]
  )
  Crashlytics.crashlytics().record(error: error)
}
