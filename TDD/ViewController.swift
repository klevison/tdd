//
//  ViewController.swift
//  TDD
//
//  Created by Klevison Matias on 9/30/16.
//  Copyright © 2016 Klevison Matias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        user = User()
        user?.name = "Klevison"
        user?.email = "klevison@gmai.com"
        
    }

}

