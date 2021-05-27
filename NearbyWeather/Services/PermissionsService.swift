//
//  PermissionsManager.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import Foundation
import UserNotifications

final class PermissionsService {
  
  // MARK: - Properties
  
  static var shared: PermissionsService!
  
  // MARK: - Instantiation
  
  static func instantiateSharedInstance() {
    shared = PermissionsService()
  }
  
  // MARK: - Interface
  
  func requestNotificationPermissions(with completionHandler: @escaping ((Bool) -> Void)) {
    UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { (granted, error) in
      DispatchQueue.main.async {
        guard error == nil, granted else {
          completionHandler(false)
          return
        }
        
        UNUserNotificationCenter.current().getNotificationSettings { settings in
          DispatchQueue.main.async {
            switch settings.authorizationStatus {
            case .authorized, .provisional:
              let approved = settings.badgeSetting == .enabled && settings.alertSetting == .enabled
              completionHandler(approved)
            case .notDetermined, .denied:
              completionHandler(false)
            @unknown default:
              completionHandler(false)
            }
          }
        }
      }
    }
  }
}
