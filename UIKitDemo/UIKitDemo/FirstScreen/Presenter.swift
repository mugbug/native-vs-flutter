//
//  Presenter.swift
//  UIKitDemo
//
//  Created by Pedro Zaroni on 10/12/19.
//  Copyright © 2019 Dextra. All rights reserved.
//

import Foundation

protocol PresenterProtocol {
    func didUpdateField(with name: String?)
    func didPressContinue()
}

protocol RouterDelegate: AnyObject {
    func showNextPage(with name: String?)
}

class Presenter {
    private var name: String?
    private weak var router: RouterDelegate?

    init(router: RouterDelegate) {
        self.router = router
    }
}

extension Presenter: PresenterProtocol {
    func didUpdateField(with name: String?) {
        self.name = name
    }

    func didPressContinue() {
        router?.showNextPage(with: self.name)
    }
}
