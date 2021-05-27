//
//  MKMapType+AllCases.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import MapKit

extension MKMapType {
  
  static var supportedCases: [MKMapType] {
    [.standard, .satellite, .hybrid]
  }
  
  var title: String {
    switch self {
      
    case .standard:
      return R.string.localizable.map_type_standard()
    case .satellite:
      return R.string.localizable.map_type_satellite()
    case .hybrid:
      return R.string.localizable.map_type_hybrid()
    default:
      return Constants.Messages.kNotSet
    }
  }
}
