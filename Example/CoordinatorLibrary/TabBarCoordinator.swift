//
//  TabBarCoordinator.swift
//  CoordinatorLibrary_Example
//
//  Created by Kauna Mohammed on 16/04/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import CoordinatorLibrary


final class TabBarCoordinator: ChildCoordinator<UITabBarController> {
  
  override func start() {
    viewController = .init()
    viewController.tabBar.tintColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
    add(
      children:
      ViewControllerCCoordinator(removeCoordinator: remove),
      ViewControllerBCoordinator(removeCoordinator: remove),
      ViewControllerACoordinator(removeCoordinator: remove))
    viewController.viewControllers = childCoordinators.convertToTabCoordinator().map { $0.presenter }
    childCoordinators.forEach { $0.start() }
    navigate(to: viewController, with: .present, animated: false)
  }
  
}


