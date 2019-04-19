//
//  ViewControllerC.swift
//  CoordinatorLibrary_Example
//
//  Created by Kauna Mohammed on 16/04/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import CoordinatorLibrary

class ViewControllerCCoordinator: NavigationCoordinator<ViewControllerC>, TabBarType {
  
  var tabBarItem: UITabBarItem = .init(title: "Home", image: .homeImage, selectedImage: nil)
  
  override func start() {
    viewController = .init()
    presenter.tabBarItem = tabBarItem
    navigate(to: viewController, with: .push, animated: true)
  }
  
}

class ViewControllerC: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
    
  }
  
}
