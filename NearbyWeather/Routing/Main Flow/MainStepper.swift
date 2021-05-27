//
//  MainStepper.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import RxCocoa
import RxFlow

enum MainStep: Step {
  case main
}

final class MainStepper: Stepper {
  
  var steps = PublishRelay<Step>()
  
  let initialStep: Step = MainStep.main
}
