//
//  ViewController.swift
//  Contacts
//
//  Created by Beatriz Carlos on 14/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // ConfigureNavigation
        navigationItem.title = "Contatos"
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
}

