//
//  ImagedToggleCell.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import UIKit

class ImagedToggleCell: UITableViewCell, ReuseIdentifiable {
  
  private lazy var contentLabel = Factory.Label.make(fromType: .body(alignment: .left, numberOfLines: 0))
  private lazy var leadingImageView = Factory.ImageView.make(fromType: .cellPrefix)
  private lazy var toggleSwitch = UISwitch()
  
  private var toggleSwitchHandler: ((UISwitch) -> Void)?
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    composeCell()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func prepareForReuse() {
    super.prepareForReuse()
    toggleSwitchHandler = nil
    toggleSwitch.removeTarget(self, action: #selector(Self.toggleSwitchChanged(_:)), for: .valueChanged)
  }
}

extension ImagedToggleCell {
  
  func configure(
    withTitle title: String,
    image: UIImage?,
    imageBackgroundColor: UIColor,
    toggleIsOnHandler: ((UISwitch) -> Void)?,
    toggleSwitchHandler: ((UISwitch) -> Void)?
  ) {
    contentLabel.text = title
    leadingImageView.image = image
    leadingImageView.backgroundColor = imageBackgroundColor
    
    toggleIsOnHandler?(toggleSwitch)
    
    self.toggleSwitchHandler = toggleSwitchHandler
    toggleSwitch.addTarget(self, action: #selector(Self.toggleSwitchChanged), for: .valueChanged)
  }
}

private extension ImagedToggleCell {
  
  @objc func toggleSwitchChanged(_ sender: UISwitch) {
    toggleSwitchHandler?(sender)
  }
  
  func composeCell() {
    separatorInset = UIEdgeInsets(
      top: 0,
      left: Constants.Dimensions.TableCellContentInsets.leading
        + Constants.Dimensions.TableCellImageSize.width
        + Constants.Dimensions.TableCellContentInsets.interElementXDistance(from: .small),
      bottom: 0,
      right: 0
    )
    
    contentView.addSubview(leadingImageView, constraints: [
      leadingImageView.heightAnchor.constraint(equalToConstant: Constants.Dimensions.TableCellImageSize.height),
      leadingImageView.widthAnchor.constraint(equalToConstant: Constants.Dimensions.TableCellImageSize.width),
      leadingImageView.topAnchor.constraint(greaterThanOrEqualTo: contentView.topAnchor, constant: Constants.Dimensions.TableCellContentInsets.top),
      leadingImageView.bottomAnchor.constraint(lessThanOrEqualTo: contentView.bottomAnchor, constant: -Constants.Dimensions.TableCellContentInsets.bottom),
      leadingImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: Constants.Dimensions.TableCellContentInsets.leading),
      leadingImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
    ])
    
    contentView.addSubview(contentLabel, constraints: [
      contentLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: Constants.Dimensions.ContentElement.height),
      contentLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: Constants.Dimensions.TableCellContentInsets.top),
      contentLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -Constants.Dimensions.TableCellContentInsets.bottom),
      contentLabel.leadingAnchor.constraint(equalTo: leadingImageView.trailingAnchor, constant: Constants.Dimensions.TableCellContentInsets.interElementXDistance(from: .small)),
      contentLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
    ])
    
    contentView.addSubview(toggleSwitch, constraints: [
      toggleSwitch.topAnchor.constraint(equalTo: contentView.topAnchor, constant: Constants.Dimensions.TableCellContentInsets.top),
      toggleSwitch.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -Constants.Dimensions.TableCellContentInsets.bottom),
      toggleSwitch.leadingAnchor.constraint(equalTo: contentLabel.trailingAnchor, constant: Constants.Dimensions.TableCellContentInsets.interElementXDistance(from: .small)),
      toggleSwitch.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -Constants.Dimensions.TableCellContentInsets.trailing),
      toggleSwitch.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
    ])
  }
}
