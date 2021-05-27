//
//  ToggleCell.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import UIKit

class ToggleCell: UITableViewCell {
  
  @IBOutlet weak var contentLabel: UILabel!
  @IBOutlet weak var toggle: UISwitch!
  
  override func prepareForReuse() {
    super.prepareForReuse()
    toggleSwitchHandler = nil
  }
  
  var toggleSwitchHandler: ((UISwitch) -> Void)?
  
  @IBAction func didToggleSwitch(_ sender: UISwitch) {
    toggleSwitchHandler?(sender)
  }
}
