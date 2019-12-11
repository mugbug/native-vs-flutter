//
//  Router.swift
//  UIKitDemo
//
//  Created by Pedro Zaroni on 10/12/19.
//  Copyright © 2019 Dextra. All rights reserved.
//

import UIKit

class Router {

    private var window: UIWindow?
    private var navigationController: UINavigationController?
    private var nextRouter: NextRouter?

    func start() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        navigationController = UINavigationController(rootViewController: ViewController(presenter: Presenter(router: self)))
        window.rootViewController = navigationController
        self.window = window
        window.backgroundColor = .systemBackground
        self.window?.makeKeyAndVisible()
    }
}

extension Router: RouterDelegate {
    func showNextPage(with name: String?) {
        let nextRouter = NextRouter(navigationController: navigationController!,
                                    name: name)
        nextRouter.start()
        self.nextRouter = nextRouter
    }
}
