//
//  ListStepper.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.
import RxCocoa
import RxFlow

enum ListStep: Step {
  case list
  case emptyList
  case weatherDetails(identifier: Int?, isBookmark: Bool)
  case dismissChildFlow
}

final class ListStepper: Stepper {
  
  init() {
    NotificationCenter.default.addObserver(
      self,
      selector: #selector(Self.emitStepOnWeatherDataServiceDidUpdate),
      name: Notification.Name(rawValue: Constants.Keys.NotificationCenter.kWeatherServiceDidUpdate),
      object: nil
    )
  }
  
  var steps = PublishRelay<Step>()
  
  var initialStep: Step {
    WeatherDataService.shared.hasDisplayableData
      ? ListStep.list
      : ListStep.emptyList
  }
  
  @objc private func emitStepOnWeatherDataServiceDidUpdate() {
    guard WeatherDataService.shared.hasDisplayableData else {
      steps.accept(ListStep.emptyList)
      return
    }
    steps.accept(ListStep.list)
  }
}
