//
//  Factory+UIImageView.swift
//  NearbyWeather
//
//  Created by hassan Baraka on 05.27.21.
//  Copyright © 2021 hassan Baraka. All rights reserved.

import UIKit.UIImageView

extension Factory {
  
  struct ImageView: FactoryFunction {
    
    enum ImageViewType {
      case appIcon
      case cellPrefix
    }
    
    typealias InputType = ImageViewType
    typealias ResultType = UIImageView
    
    static func make(fromType type: InputType) -> ResultType {
      let imageView = UIImageView()
      
      switch type {
      case .appIcon:
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = Constants.Dimensions.AppIconImageSize.cornerRadius
        imageView.layer.masksToBounds = true
      case .cellPrefix:
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = Constants.Dimensions.TableCellImageSize.cornerRadius
        imageView.layer.masksToBounds = true
      }
      
      return imageView
    }
  }
}
