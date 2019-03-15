//
//  AppCoordinator.swift
//  Coordinator
//
//  Created by Kauna Mohammed on 11/09/2018.
//  Copyright © 2018 Kauna Mohammed. All rights reserved.
//

import CoordinatorLibrary
import UIKit.UIWindow

public final class AppCoordinator: Coordinatable, ChildCoordinatable {
    
    private let window: UIWindow
    public let presenter: UINavigationController = .init()

    lazy public var childCoordinators: [Coordinatable] = []

    public init(window: UIWindow) {
        self.window = window
    }
    
    public func start() {
        window.rootViewController = presenter
        window.makeKeyAndVisible()
        startChild()
    }
    
}

extension AppCoordinator {
    
    private func startChild() {
        let child = ViewControllerACoordinator(presenter: presenter, 
                                               removeCoordinator: remove)
        add(child: child)
        child.start()
    }
}
