//
//  SettingsBundleTransferService.swift
//  NearbyWeather
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import Foundation

final class SettingsBundleTransferService {
  
  static let shared = SettingsBundleTransferService()
  
  // MARK: - Types
  
  private struct SettingsBundleIdentifier {
    static let appVersion = "app_version_identifier"
    static let appBuild = "app_build_identifier"
  }
  
  // MARK: - Assets
  
  private lazy var appVersion: String? = {
    Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
  }()
  
  private lazy var appBuild: String? = {
    Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as? String
  }()
  
  // MARK: - Functions
  
  func updateSystemSettings() {
    if let appVersion = appVersion {
      UserDefaults.standard.set(appVersion, forKey: SettingsBundleIdentifier.appVersion)
    }
    if let appBuild = appBuild {
      UserDefaults.standard.set(appBuild, forKey: SettingsBundleIdentifier.appBuild)
    }
  }
}
