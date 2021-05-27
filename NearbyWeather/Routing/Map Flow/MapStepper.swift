//
//  MapStepper.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import RxCocoa
import RxFlow

enum MapStep: Step {
  case map
  case weatherDetails(identifier: Int?, isBookmark: Bool)
  case dismissChildFlow
}

final class MapStepper: Stepper {
  
  var steps = PublishRelay<Step>()
  
  let initialStep: Step = MapStep.map
}
