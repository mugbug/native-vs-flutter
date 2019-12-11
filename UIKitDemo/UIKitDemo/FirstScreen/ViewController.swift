//
//  ViewController.swift
//  UIKitDemo
//
//  Created by Pedro Zaroni on 10/12/19.
//  Copyright © 2019 Dextra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let presenter: PresenterProtocol

    init(presenter: PresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Stacks

    private lazy var verticalStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 50
        return stack
    }()

    private lazy var horizontalStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 20
        return stack
    }()

    // MARK: - Views

    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Digite seu nome:"
        label.setContentHuggingPriority(.required, for: .horizontal)
        return label
    }()

    private lazy var textField: UITextField = {
        let field = UITextField()
        field.delegate = self
        field.placeholder = "Pedro"
        return field
    }()

    private lazy var button: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.setTitle("Ir!", for: .normal)
        button.backgroundColor = .blue
        button.contentEdgeInsets.top = 20
        button.contentEdgeInsets.bottom = 20
        return button
    }()


    // MARK: - Life cycle & etc

    override func viewDidLoad() {
        super.viewDidLoad()
        buildView()

        setupNavigationBar()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.layer.cornerRadius = button.frame.height / 2
    }

    private func setupNavigationBar() {
        title = "UIKit Demo"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

extension ViewController {
    @objc private func didTapButton() {
        presenter.didPressContinue()
    }
}

// MARK: - View builder

extension ViewController {
    private func buildView() {
        addSubviews()
        addConstraints()
    }

    private func addSubviews() {
        view.addSubview(verticalStack)
        verticalStack.addArrangedSubviews([
            horizontalStack,
            button
        ])
        horizontalStack.addArrangedSubviews([
            label,
            textField
        ])
    }

    private func addConstraints() {
        verticalStack.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            verticalStack.leadingAnchor.constraint(equalTo: view.leadingAnchor,
                                                   constant: 50),
            verticalStack.trailingAnchor.constraint(equalTo: view.trailingAnchor,
                                                    constant: -50),
            verticalStack.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

// MARK: - UITextFieldDelegate

extension ViewController: UITextFieldDelegate {

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        presenter.didUpdateField(with: "\(textField.text ?? "")\(string)")
        return true
    }
}


extension UIStackView {
    func addArrangedSubviews(_ views: [UIView]) {
        views.forEach { view in
            addArrangedSubview(view)
        }
    }
}
