//
//  UserTests.swift
//  TDD
//
//  Created by Klevison Matias on 10/6/16.
//  Copyright © 2016 Klevison Matias. All rights reserved.
//

import XCTest

class UserTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
    }
    
    override func tearDown() {
        
        super.tearDown()
    }
    
    func testValidEmail() {
        let emailCollection = ["email@example.com",
                               "firstname.lastname@example.com",
                               "mail@subdomain.example.com",
                               "firstname+lastname@example.com",
                               "1234567890@example.com",
                               "email@example-one.com",
                               "email@example.name",
                               "email@example.museum",
                               "email@example.co.jp",
                               "firstname-lastname@example.com"]
        let user = User()
        for email in emailCollection {
            user.email = email
            XCTAssert(user.email!.isEmail, "Email \(email) inválido")
        }
        
    }
    
    func testInvalidEmail() {
        let emailCollection = ["plainaddress",
                               "#@%^%#$@#$@#.com",
                               "@example.com",
                               "Joe Smith <email@example.com>",
                               "email.example.com",
                               "email@example@example.com",
                               "あいうえお@example.com",
                               "email@example.com (Joe Smith)",
                               "email@example",
                               "email@111.222.333.44444"]
        let user = User()
        for email in emailCollection {
            user.email = email
            XCTAssertFalse(user.email!.isEmail, "Email \(email) válido")
        }
    }
    
}
