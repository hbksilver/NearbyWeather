//
//  SettingsStepper.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import RxCocoa
import RxFlow

enum SettingsStep: Step {
  case settings
  case about
  case apiKeyEdit
  case manageLocations
  case addLocation
  case webBrowser(url: URL)
}

final class SettingsStepper: Stepper {
  
  var steps = PublishRelay<Step>()
  
  var initialStep: Step = SettingsStep.settings
}
