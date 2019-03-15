//
//  AppDelegate.swift
//  Coordinator
//
//  Created by kaunamohammed on 03/15/2019.
//  Copyright (c) 2019 kaunamohammed. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    private lazy var appCoordinator: AppCoordinator = {
        let coordinator = AppCoordinator(window: window!)
        return coordinator
    }()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        appCoordinator.start()
        
        return true
    }

}

