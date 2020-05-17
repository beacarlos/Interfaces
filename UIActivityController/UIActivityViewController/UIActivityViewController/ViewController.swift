//
//  ViewController.swift
//  UIActivityViewController
//
//  Created by Beatriz Carlos on 15/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var textFildSearch = UITextField()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        title = "UIActivityViewController"
    }
}

extension ViewController {
    func configureTextFild() {
        textFildSearch.placeholder = "O que está pensando?"
    }
}
