//
//  DevelopmentContributorDTO.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import Foundation

struct DevelopmentContributorArrayWrapper: Codable {
  var elements: [DevelopmentContributorDTO]
}

struct DevelopmentContributorDTO: Codable {
  var firstName: String
  var lastName: String
  var contributionDescription: [String: String]
  var urlString: String
  
  var localizedContributionDescription: String? {
    return contributionDescription
      .first { $0.key == Locale.current.languageCode?.lowercased() ?? "en" }?
      .value
  }
}
