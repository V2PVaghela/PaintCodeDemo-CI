//
//  BrainTests.swift
//  FizzBuzz
//
//  Created by v2team on 02/08/16.
//  Copyright © 2016 Harshal. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {
    
    let brain = Brain()

    func testIsDivisibleByThree() {
        let result = brain.isDivisibleByThree(3)
        XCTAssertEqual(result, true)
    }
    
    func testIsDivisibleByFive() {
        let result = brain.isDivisibleByFive(5)
        XCTAssertEqual(result, true)
    }
    
    func testSayFizz() {
        let result = brain.check(3)
        XCTAssertEqual(result, "Fizz")
    }
    
    func testSayBuzz() {
        let result = brain.check(5)
        XCTAssertEqual(result, "Buzz")
    }
    
    func testSayFizzBuzz() {
        let result = brain.check(15)
        XCTAssertEqual(result, "FizzBuzz")
    }
    
    func testSayNumber() {
        let result = brain.check(1)
        XCTAssertEqual(result, "1")
    }
    
    /*********************************************************************/
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}
