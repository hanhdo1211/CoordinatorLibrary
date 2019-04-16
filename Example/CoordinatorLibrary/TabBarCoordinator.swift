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
    setUp()
  }
  
}

private extension TabBarCoordinator {
  
  func setUp() {
    viewController = UITabBarController()
    add(children:
      ViewControllerACoordinator(removeCoordinator: remove), ViewControllerBCoordinator(removeCoordinator: remove)
    )
    viewController.viewControllers = childCoordinators.convertToTabCoordinator().map { $0.presenter }
    childCoordinators.forEach { $0.start() }
    navigate(to: viewController, with: .present, animated: false)
  }
  
}

