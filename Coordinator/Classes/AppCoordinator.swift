//
//  AppCoordinator.swift
//  CoordinatorLibrary
//
//  Created by Kauna Mohammed on 15/03/2019.
//

import Foundation

/// A base class that acts as the starting coordinator
/// This class should kick off coordination from the 'AppDelegate'
open class AppCoordinator: Coordinatable, ChildCoordinatable {
    
    public let window: UIWindow
    public var presenter: UINavigationController = .init()
    
    lazy public var childCoordinators: [Coordinatable] = []
    
    public init(window: UIWindow) {
        self.window = window
        window.rootViewController = presenter
        window.makeKeyAndVisible()
    }
    
    open func start() {
        fatalError("Subclass must implement")
    }
    
}