//
//  TabBarCoordinatable.swift
//  Coordinator
//
//  Created by Kauna Mohammed on 15/03/2019.
//

import UIKit

/**
 
 `TabBarCoordinatable`
 
 
 */
public protocol TabBarCoordinatable: class {
    /// The root controller to be added to a `UITabBarController`
    var rootController: UINavigationController { get }
    
    /// The tab bar item to apply to the root controller
    var tabBarItem: UITabBarItem { get }
}
