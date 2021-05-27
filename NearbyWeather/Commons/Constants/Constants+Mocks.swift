//
//  Constants+Mocks.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import Foundation

extension Constants {
  enum Mocks {}
}

extension Constants.Mocks {
  
  enum WeatherStationDTOs {
    static let kDefaultBookmarkedLocation = WeatherStationDTO(
      identifier: 5341145,
      name: "Cupertino",
      state: "CA",
      country: "US",
      coordinates: Coordinates(latitude: 37.323002, longitude: -122.032181)
    )
  }
}
