//
//  SignInViewController.swift
//  TDD
//
//  Created by Klevison Matias on 10/10/16.
//  Copyright (c) 2016 Klevison Matias. All rights reserved.
//

import Foundation
import UIKit

final class SignInViewController: UIViewController {
    
    var presenter: SignInPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter = SignInPresenter(view: self)
    }
    
    @IBAction func loginButtonTapped() {
        presenter?.login(user: User())
    }
    
}

extension SignInViewController: SignInViewProtocol {
    
    
    
}
