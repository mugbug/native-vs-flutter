//
//  ViewController.swift
//  UIKitDemo
//
//  Created by Pedro Zaroni on 10/12/19.
//  Copyright © 2019 Dextra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var name: String?

    private var contentView: View?

    init() {
        super.init(nibName: nil, bundle: nil)
        contentView = View(delegate: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        self.view = contentView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        contentView?.configureButtonCornerRadius()
    }

    private func setupNavigationBar() {
        title = "UIKit Demo"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

extension ViewController: ViewDelegate {
    func didTapButton() {
        let nextViewController = NextViewController(name: contentView?.textField.text)
        self.navigationController?.pushViewController(
            nextViewController, animated: true
        )
    }
}
extension UIStackView {
    func addArrangedSubviews(_ views: [UIView]) {
        views.forEach { view in
            addArrangedSubview(view)
        }
    }
}
