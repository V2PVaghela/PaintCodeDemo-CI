//
//  ViewControllerUnitTests.swift
//  FizzBuzz
//
//  Created by v2team on 03/08/16.
//  Copyright © 2016 Harshal. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerUnitTests: XCTestCase {

    var viewController : ViewController!
    
    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }
    
    func testMove1IncrementsScore() {
        viewController.play("1")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementScore() {
        viewController.play("1")
        viewController.play("2")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testFizzIncrementScore() {
        viewController.game?.score = 2
        viewController.play("Fizz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }
    
    func testBuzzIncrementScore() {
        viewController.game?.score = 4
        viewController.play("Buzz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    func testFizzBuzzIncrementScore() {
        viewController.game?.score = 14
        viewController.play("FizzBuzz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
    /*********************************************************************/
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        viewController = storyboard.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
        UIApplication.sharedApplication().keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
        
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
