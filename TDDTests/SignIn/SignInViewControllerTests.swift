//
//  TDDTests.swift
//  TDDTests
//
//  Created by Klevison Matias on 9/30/16.
//  Copyright © 2016 Klevison Matias. All rights reserved.
//

import XCTest
@testable import TDD

class SignInViewControllerTests: XCTestCase {
    
    class SignInPresenterMock: SignInPresenterProtocol {
        
        var view: SignInViewProtocol?
        var interactor: SignInInteractorInputProtocol?
        var loginCalled = false
        
        init(view: SignInViewProtocol) {
            self.view = view
        }
        
        func login(user: User) {
            loginCalled = true
        }
        
    }

    var mockPresenter: SignInPresenterMock!
    var signInViewController: SignInViewController!

    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        signInViewController = storyboard.instantiateInitialViewController() as? SignInViewController
        mockPresenter = SignInPresenterMock(view: signInViewController)
        signInViewController.presenter = mockPresenter
    }

    override func tearDown() {
        signInViewController = nil
        super.tearDown()
    }
  
    func testViewShouldCallPresenterLoginMethodAfterLoginButtonTapped() {
        signInViewController.loginButtonTapped()
        XCTAssertTrue(mockPresenter.loginCalled,"loginCalled should be true")
    }

}
