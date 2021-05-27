//
//  Constants+URLs.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import Foundation

extension Constants {
  
  enum EmailAdresses {
    static let mainContact = "barakahassan7@gmail.com"
  }
  
  enum Urls {
    static let kAppStoreRatingDeepLinkUrl = URL(string: "https://itunes.apple.com/app/id1227313069?action=write-review&mt=8")!
    static let kGitHubProjectMainPageUrl =  URL(string: "https://github.com/hbksilver//NearbyWeather")!
    static let kGitHubProjectContributionGuidelinesUrl = URL(string: "https://github.com/hbksilver/NearbyWeather/blob/master/CONTRIBUTING.md")!
    static let kGitHubProjectIssuesUrl = URL(string: "https://github.com/hbksilver/NearbyWeather/issues")!
    static let kPrivacyPolicyUrl = URL(string: "https://github.com/hbksilver/NearbyWeather/blob/master/PRIVACYPOLICY.md")!
    static let kTermsOfUseUrl = URL(string: "https://github.com/hbksilver/NearbyWeather/blob/master/TERMSOFUSE.md")!
    static let kOpenWeatherSingleLocationBaseUrl = URL(string: "http://api.openweathermap.org/data/2.5/weather")!
    static let kOpenWeatherMultiLocationBaseUrl = URL(string: "http://api.openweathermap.org/data/2.5/find")!
    static let kOpenWeatherMapUrl = URL(string: "https://openweathermap.org")!
    static let kOpenWeatherMapInstructionsUrl = URL(string: "https://openweathermap.org/appid")!
    
    static func kOpenWeatherMapCityDetailsUrl(forCityWithName name: String) -> URL {
      return URL(string: "https://openweathermap.org/find?q=\(name)")!
    }
    
    static func kOpenWeatherMapSingleStationtDataRequestUrl(with apiKey: String, stationIdentifier identifier: Int) -> URL {
      let localeTag = Locale.current.languageCode?.lowercased() ?? "en"
      let baseUrl = Constants.Urls.kOpenWeatherSingleLocationBaseUrl.absoluteString
      return URL(string: "\(baseUrl)?APPID=\(apiKey)&id=\(identifier)&lang=\(localeTag)")!
    }
    
    static func kOpenWeatherMapMultiStationtDataRequestUrl(with apiKey: String, currentLatitude latitude: Double, currentLongitude longitude: Double) -> URL {
      let baseUrl = Constants.Urls.kOpenWeatherMultiLocationBaseUrl.absoluteString
      let numberOfResults = PreferencesDataService.shared.amountOfResults.integerValue
      return URL(string: "\(baseUrl)?APPID=\(apiKey)&lat=\(latitude)&lon=\(longitude)&cnt=\(numberOfResults)")!
    }
  }
}
