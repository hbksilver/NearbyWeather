//
//  Factory+NavigationController.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import UIKit.UINavigationController

extension Factory {
  
  struct NavigationController: FactoryFunction {
    
    enum NavigationControllerType {
      case standard
    }
    
    typealias InputType = NavigationControllerType
    typealias ResultType = UINavigationController
    
    static func make(fromType type: InputType) -> ResultType {
      let navigationController = UINavigationController()
      
      switch type {
      case .standard:
        navigationController.navigationBar.backgroundColor = Constants.Theme.Color.ViewElement.background
        navigationController.navigationBar.barTintColor = Constants.Theme.Color.ViewElement.background
        navigationController.navigationBar.tintColor = Constants.Theme.Color.ContentElement.title
        navigationController.navigationBar.isTranslucent = false
        navigationController.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
        navigationController.navigationBar.barStyle = .default
      }
      
      return navigationController
    }
  }
}
