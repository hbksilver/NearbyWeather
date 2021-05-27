//
//  UINavigationBar+Extensions.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import UIKit.UINavigationController

extension UINavigationBar {
  
 func style(withBarTintColor barTintColor: UIColor, tintColor: UIColor) {
    isTranslucent = false
    
    self.barTintColor = barTintColor
    self.tintColor = tintColor
    titleTextAttributes = [.foregroundColor: tintColor]
    barStyle = .default
  }
}
