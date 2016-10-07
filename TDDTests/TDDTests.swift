//
//  TDDTests.swift
//  TDDTests
//
//  Created by Klevison Matias on 9/30/16.
//  Copyright © 2016 Klevison Matias. All rights reserved.
//

import XCTest
@testable import TDD

class TDDTests: XCTestCase {
    
    var viewController: ViewController?
    
    override func setUp() {
        super.setUp()
        
        viewController = ViewController()
    }
    
    override func tearDown() {
        viewController = nil
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
