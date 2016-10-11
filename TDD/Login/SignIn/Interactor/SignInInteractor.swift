//
//  SignInInteractor.swift
//  TDD
//
//  Created by Klevison Matias on 10/10/16.
//  Copyright (c) 2016 Klevison Matias. All rights reserved.
//

import Foundation

class SignInInteractor: SignInInteractorInputProtocol {
    
    weak var presenter: SignInInteractorOutputProtocol?
    var APIDataManager: SignInAPIDataManagerInputProtocol?
    var localDatamanager: SignInLocalDataManagerInputProtocol?
    
    init() {
        APIDataManager = SignInAPIDataManager()
        localDatamanager = SignInLocalDataManager()
    }
    
    func login(user: User) {
    
    }
    
    
}
