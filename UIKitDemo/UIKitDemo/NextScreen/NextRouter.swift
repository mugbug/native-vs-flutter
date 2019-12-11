//
//  NextRouter.swift
//  UIKitDemo
//
//  Created by Pedro Zaroni on 10/12/19.
//  Copyright © 2019 Dextra. All rights reserved.
//

import UIKit

class NextRouter {

    private let navigationController: UINavigationController
    private let currentViewController: UIViewController

    init(navigationController: UINavigationController,
         name: String?) {
        self.navigationController = navigationController
        self.currentViewController = NextViewController(name: name)
    }

    func start() {
        navigationController.pushViewController(currentViewController, animated: true)
    }
}
