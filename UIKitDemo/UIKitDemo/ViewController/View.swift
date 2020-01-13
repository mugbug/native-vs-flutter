//
//  View.swift
//  UIKitDemo
//
//  Created by Pedro Zaroni on 07/01/20.
//  Copyright © 2020 Dextra. All rights reserved.
//

import UIKit

protocol ViewDelegate: AnyObject {
    func didTapButton()
}

class View: UIView, NibDesignable {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var textField: UITextField!

    private weak var delegate: ViewDelegate?

    init(delegate: ViewDelegate) {
        self.delegate = delegate
        super.init(frame: .zero)
        loadNib()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @IBAction func didTapButton(_ sender: Any) {
        delegate?.didTapButton()
    }

    func configureButtonCornerRadius() {
        button.layer.cornerRadius = button.frame.height / 2
    }
}
