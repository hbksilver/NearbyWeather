//
//  WeatherDetailStepper.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import RxCocoa
import RxFlow

enum WeatherDetailStep: Step {
  case weatherDetail
  case dismiss
}

final class WeatherDetailStepper: Stepper {
  
  var steps = PublishRelay<Step>()
  
  var initialStep: Step = WeatherDetailStep.weatherDetail
}
