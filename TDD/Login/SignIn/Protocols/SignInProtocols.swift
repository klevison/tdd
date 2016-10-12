//
//  SignInProtocols.swift
//  TDD
//
//  Created by Klevison Matias on 10/10/16.
//  Copyright (c) 2016 Klevison Matias. All rights reserved.
//

import Foundation

protocol SignInViewProtocol: class {
    var presenter: SignInPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
    
    func userLogged(user: User?)
}

protocol SignInPresenterProtocol: class {
    
    var view: SignInViewProtocol? { get set }
    var interactor: SignInInteractorInputProtocol? { get set }
    
    func login(user: User)
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */
}

protocol SignInInteractorOutputProtocol: class {
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
    
    func userLogged(user: User?)
}

protocol SignInInteractorInputProtocol: class {
    var presenter: SignInInteractorOutputProtocol? { get set }
    var APIDataManager: SignInAPIDataManagerInputProtocol? { get set }
    var localDatamanager: SignInLocalDataManagerInputProtocol? { get set }
    
    
    func login(user: User)
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
}

protocol SignInDataManagerInputProtocol: class {
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */
}

protocol SignInAPIDataManagerInputProtocol: class {
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */
}

protocol SignInLocalDataManagerInputProtocol: class {
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}
