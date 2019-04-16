//
//  AppCoordinator.swift
//  Coordinator
//
//  Created by Kauna Mohammed on 11/09/2018.
//  Copyright © 2018 Kauna Mohammed. All rights reserved.
//

import CoordinatorLibrary

// ideally this would be <Your App Name>AppCoordinator
// e.g. SnapchatAppCoordinator
class CoordinatorExampleAppCoordinator: AppCoordinator {
  
  var child: TabBarCoordinator!
  
  override func start() {
    child = TabBarCoordinator(presenter: presenter,
                              removeCoordinator: remove)
    add(child: child)
    DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) {
      self.child.start()
    }
  }
  
}
