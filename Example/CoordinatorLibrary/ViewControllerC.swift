//
//  ViewControllerC.swift
//  CoordinatorLibrary_Example
//
//  Created by Kauna Mohammed on 16/04/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import CoordinatorLibrary

class ViewControllerCCoordinator: NavigationCoordinator<ViewControllerC> {
  
  var tabBarItem: UITabBarItem = .init(tabBarSystemItem: .contacts, tag: 0)
  
  override func start() {
    viewController = .init()
    viewController.tabBarItem = tabBarItem
    navigate(to: viewController, with: .push, animated: true)
  }
  
}

class ViewControllerC: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
    
  }
  
}
