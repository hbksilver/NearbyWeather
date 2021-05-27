//
//  RootStepper.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import RxFlow
import RxCocoa

enum RootStep: Step {
  case main
  case welcome
  case dimissWelcome
}

class RootStepper: Stepper {
  
  var steps = PublishRelay<Step>()
  
  var initialStep: Step {
    guard UserDefaults.standard.value(forKey: Constants.Keys.UserDefaults.kNearbyWeatherApiKeyKey) != nil else {
      return RootStep.welcome
    }
    return RootStep.main
  }
}
