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
    
    override func start() {
        startChild()
    }
    
}

extension CoordinatorExampleAppCoordinator {
    
    func startChild() {
        let child = ViewControllerACoordinator(presenter: presenter,
                                               removeCoordinator: remove)
        add(child: child)
        child.start()
    }
}
