//
//  WelcomeStepper.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.
import RxCocoa
import RxFlow

enum WelcomeStep: Step {
  case setApiKey
  case setPermissions
  case dismiss
}

final class WelcomeStepper: Stepper {
  
  var steps = PublishRelay<Step>()
  
  let initialStep: Step = WelcomeStep.setApiKey
}
