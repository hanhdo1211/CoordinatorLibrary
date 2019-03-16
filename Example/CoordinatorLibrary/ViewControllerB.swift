//
//  ViewControllerB.swift
//  Coordinator_Example
//
//  Created by Kauna Mohammed on 15/03/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import CoordinatorLibrary

class ViewControllerBCoordinator: NavigationCoordinator<ViewControllerB> {
    
    override func start() {
        viewController = ViewControllerB()
        navigate(to: viewController, with: .push, animated: true)
    }
    
}


class ViewControllerB: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        
    }
    
}
