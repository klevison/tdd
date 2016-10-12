//
//  SignInInteractorTests.swift
//  TDD
//
//  Created by Klevison Matias on 10/11/16.
//  Copyright © 2016 Klevison Matias. All rights reserved.
//

import XCTest
@testable import TDD

class SignInInteractorTests: XCTestCase {
    
    class SignInPresenterOutputMock: SignInPresenterProtocol, SignInInteractorOutputProtocol {
        
        weak var view: SignInViewProtocol?
        var interactor: SignInInteractorInputProtocol?
        var userLoggedCalled = false
        
        init(view: SignInViewProtocol) {
            self.view = view
            interactor = SignInInteractor()
            interactor?.presenter = self
        }
        
        func login(user: User) {
            interactor?.login(user: user)
        }
        
        func userLogged(user: User?) {
            userLoggedCalled = true
        }
        
    }
 
    var signInViewController: SignInViewController!
    var mockPresenter: SignInPresenterOutputMock!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        signInViewController = storyboard.instantiateInitialViewController() as? SignInViewController
        mockPresenter = SignInPresenterOutputMock(view: signInViewController)
    }
    
    func testInterectorShouldCallPresenterUserLoggedMethodAfterExecuteLoginMethod() {
        mockPresenter.interactor?.login(user: User())
        XCTAssertTrue(mockPresenter.userLoggedCalled,"loginCalled should be true")
    }
    
}


