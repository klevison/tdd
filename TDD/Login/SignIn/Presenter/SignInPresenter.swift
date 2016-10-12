//
//  SignInPresenter.swift
//  TDD
//
//  Created by Klevison Matias on 10/10/16.
//  Copyright (c) 2016 Klevison Matias. All rights reserved.
//

import Foundation

class SignInPresenter: SignInPresenterProtocol, SignInInteractorOutputProtocol {
    weak var view: SignInViewProtocol?
    var interactor: SignInInteractorInputProtocol?
    
    init(view: SignInViewProtocol) {
        self.view = view
        interactor = SignInInteractor()
        interactor?.presenter = self
    }
    
    func login(user: User) {
        interactor?.login(user: user)
    }
    
    func userLogged(user: User?) {
        view?.userLogged(user: user)
    }
    
}
