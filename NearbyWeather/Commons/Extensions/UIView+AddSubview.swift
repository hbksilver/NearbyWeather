//
//  UIView+AddSubview.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import UIKit

extension UIView {
  @discardableResult func addSubview<S: UIView>(_ subview: S, constraints: [NSLayoutConstraint]) -> S {
    subview.translatesAutoresizingMaskIntoConstraints = false
    addSubview(subview)
    NSLayoutConstraint.activate(constraints)
    return subview
  }
}
