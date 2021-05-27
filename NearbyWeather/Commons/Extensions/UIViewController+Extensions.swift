//
//  UIViewController+Extensions.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import UIKit
import SafariServices

extension UIViewController {
  
  func presentSafariViewController(for url: URL) {
    let safariController = SFSafariViewController(url: url)
    safariController.preferredControlTintColor = Constants.Theme.Color.ContentElement.title
    if #available(iOS 13, *) {
      safariController.modalPresentationStyle = .automatic
    } else {
      safariController.modalPresentationStyle = .overFullScreen
    }
    present(safariController, animated: true, completion: nil)
  }
}
