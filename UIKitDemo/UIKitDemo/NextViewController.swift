//
//  NextViewController.swift
//  UIKitDemo
//
//  Created by Pedro Zaroni on 10/12/19.
//  Copyright © 2019 Dextra. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    private let name: String?

    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Oi, \(name ?? "")!!"
        label.font = .preferredFont(forTextStyle: .largeTitle)
        return label
    }()

    init(name: String?) {
        self.name = name
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(label)

        label.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        view.backgroundColor = .systemBackground
    }
}
