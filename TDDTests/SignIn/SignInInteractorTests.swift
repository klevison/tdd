//
//  SignInInteractorTests.swift
//  TDD
//
//  Created by Klevison Matias on 10/11/16.
//  Copyright © 2016 Klevison Matias. All rights reserved.
//

import Foundation
@testable import TDD

class SignInInteractorMock: SignInInteractorInputProtocol {
    
    weak var presenter: SignInInteractorOutputProtocol?
    var APIDataManager: SignInAPIDataManagerInputProtocol?
    var localDatamanager: SignInLocalDataManagerInputProtocol?
    var loginCalled = false
    
    init() {
        APIDataManager = SignInAPIDataManager()
        localDatamanager = SignInLocalDataManager()
    }
    
    func login(user: User) {
        loginCalled = true
    }
    
}

//func testShouldCallSignInInteractor() {
//    let user = User()
//    user.email = "klevison@gmail.com"
//    user.name = "Klevison"
//    
//    mocksgnInInteractor.login(user: user)
//    XCTAssert(mocksgnInInteractor.loginCalled,"loginCalled should be true")
//}
