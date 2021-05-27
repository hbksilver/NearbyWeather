//
//  Constants+Keys.swift
//  NearbyWeather
//
//  Created by Erik Maximilian Martens on 28.01.20.
//  Copyright © 2020 Erik Maximilian Martens. All rights reserved.
//

import Foundation

extension Constants {
  enum Keys {}
}

extension Constants.Keys {
  
  enum UserDefaults {
    static let kNearbyWeatherApiKeyKey = "nearby_weather.openWeatherMapApiKey"
    static let kIsInitialLaunch = "nearby_weather.isInitialLaunch"
    static let kRefreshOnAppStartKey = "hbksilver.nearbyWeather.refreshOnAppStart"
    static let kWeatherDataLastRefreshDateKey = "hbksilver.nearbyWeather.weatherDataService.lastUpdateDate"
    static let kIsTemperatureOnAppIconEnabledKey = "hbksilver.nearbyWeather.isTemperatureOnAppIconEnabled"
  }
}

extension Constants.Keys {
  
  enum NotificationCenter {
    static let kWeatherServiceDidUpdate = "hbksilver.nearbyWeather.weatherServiceDidUpdate"
    static let kLocationAuthorizationUpdated = "hbksilver.nearbyWeather.locationAuthorizationUpdated"
    static let kNetworkReachabilityChanged = "hbksilver.nearbyWeather.networkReachabilityChanged"
    static let kSortingOrientationPreferenceChanged = "hbksilver.nearbyWeather.sortingOrientationPreferenceChanged"
  }
}

extension Constants.Keys {
  
  enum NotificationIdentifiers {
    static let kAppIconTemeperatureNotification = "AppIconTemeperatureNotification"
  }
}

extension Constants.Keys {
  
  enum KeyValueBindings {
    static let kImage = "image"
    static let kChecked = "checked"
  }
}

extension Constants.Keys {
  
  enum Storage {
    static let kWeatherDataManagerStoredContentsFileName = "WeatherDataManagerStoredContents"
    static let kPreferencesManagerStoredContentsFileName = "PreferencesManagerStoredContents"
  }
}

extension Constants.Keys {
  
  enum MapAnnotation {
    static let kMapAnnotationViewIdentifier = "hbksilver.nearbyWeather.WeatherLocationMapAnnotationView"
  }
}

extension Constants.Keys {
  
  enum AppCoordinator {
    static let kStep = "dhbksilver.nearbyWeather.step"
  }
}
