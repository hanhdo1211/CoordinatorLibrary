//
//  ViewControllerA.swift
//  Coordinator
//
//  Created by kaunamohammed on 03/15/2019.
//  Copyright (c) 2019 kaunamohammed. All rights reserved.
//

import UIKit
import CoordinatorLibrary

class ViewControllerACoordinator: ChildCoordinator<ViewControllerA> {
    
    override func start() {
        
        viewController = ViewControllerA()
        navigate(to: viewController, with: .push, animated: true)
        
        viewController.didTapButton = { [startViewCoordinatorB] in
            startViewCoordinatorB()
        }
    }
    
    private func startViewCoordinatorB() {
        let child = ViewControllerBCoordinator(presenter: presenter, removeCoordinator: remove)
        add(child: child)
        child.start()
    } 
    
}



class ViewControllerA: UIViewController, StoryBoardSupportable {
    
    private lazy var button: UIButton = {
        let b = UIButton()
        b.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        b.setTitle("Next VC", for: .normal)
        b.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        b.addTarget(self, action: #selector(tap), for: .touchUpInside)
        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()
    
    // this allows the coordinator for the view controller to recieve tap events
    // possible to use a delegate instead of closures but i've found closures do the trick just fine and they're much cleaner and a one liner.
    public var didTapButton: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        view.addSubview(button)
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 300).isActive = true
    }
    
    @objc private func tap() {
        didTapButton?()
    }

}

