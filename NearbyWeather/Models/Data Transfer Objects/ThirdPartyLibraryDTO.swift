//
//  ThirdPartyLibraryDTO.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import Foundation

struct ThirdPartyLibraryArrayWrapper: Codable {
  var elements: [ThirdPartyLibraryDTO]
}

struct ThirdPartyLibraryDTO: Codable {
  var name: String
  var urlString: String
}
