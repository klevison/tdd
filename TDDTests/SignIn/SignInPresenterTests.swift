//
//  SignInPresenterTests.swift
//  TDD
//
//  Created by Klevison Matias on 10/11/16.
//  Copyright © 2016 Klevison Matias. All rights reserved.
//

import XCTest
@testable import TDD

class SignInPresenterTests: XCTestCase {
    
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
    
    class SignInViewControllerMock: UIViewController, SignInViewProtocol {
        
        var userLoggedCalled = false
        var presenter: SignInPresenterProtocol?
        
        func userLogged(user: User?) {
            userLoggedCalled = true
        }
        
    }
    
    var signInViewController: SignInViewController!
    var mockPresenter: SignInPresenter!
    var mockInteractor = SignInInteractorMock()

    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        signInViewController = storyboard.instantiateInitialViewController() as? SignInViewController
        mockPresenter = SignInPresenter(view: signInViewController)
        mockPresenter.interactor = mockInteractor
    }
    
    func testPresenterShouldCallInterectorLoginMethodAfterExecuteLoginMethod() {
        mockPresenter.login(user: User())
        XCTAssertTrue(mockInteractor.loginCalled,"loginCalled should be true")
    }
    
    func testPresenterShouldCallViewUserLoggedMethodAfterExecuteUserLoggeMethod() {
        let mockSignInViewController = SignInViewControllerMock()
        let presenter = SignInPresenter(view: mockSignInViewController)
        mockSignInViewController.presenter = presenter
        presenter.userLogged(user: User())
        XCTAssertTrue(mockSignInViewController.userLoggedCalled,"userLoggedCalled should be true")
    }
    
}
