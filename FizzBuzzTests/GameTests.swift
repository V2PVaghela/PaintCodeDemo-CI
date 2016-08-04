//
//  GameTests.swift
//  FizzBuzz
//
//  Created by v2team on 02/08/16.
//  Copyright © 2016 Harshal. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {
    
    let game = Game()
    
    
    func  testGameStartArZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayScoreIncremented() {
        game.play("1")
        XCTAssertTrue(game.score == 1)
    }
    //Fizz move
    func testIfMoveIsRight() {
        game.score = 2
        let response = game.play("Fizz")
        let result = response.right
        
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsWrong() {
        game.score = 1
        let response = game.play("Fizz")
        let result = response.right
        
        XCTAssertEqual(result, false)
    }
    //Buzz moves
    func testIfBuzzMoveRight() {
        game.score = 4
        let response = game.play("Buzz")
        let result = response.right
        
        XCTAssertEqual(result, true)
    }
    
    func testIfBuzzMoveWrong() {
        game.score = 1
        let response = game.play("Buzz")
        let result = response.right
        
        XCTAssertEqual(result, false)
    }
    
    func testIfFizzBuzzMoveRight() {
        game.score = 14
        let response = game.play("FizzBuzz")
        let result = response.right
        
        XCTAssertEqual(result, true)
    }
    
    func testIfFizzBuzzMoveWrong() {
        game.score = 1
        let response = game.play("FizzBuzz")
        let result = response.right
        
        XCTAssertEqual(result, false)
    }
    
    func testIfNumberMoveRight() {
        game.score = 1
        let response = game.play("2")
        let result = response.right
        
        XCTAssertEqual(result, true)
    }
    
    func testIfNumberMoveWrong() {
        game.score = 2
        let response = game.play("3")
        let result = response.right
        
        XCTAssertEqual(result, false)
    }
    
    func testPlayShouldReturnIfMoveRight() {
        let response = game.play("1")
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play("1")
        XCTAssertNotNil(response.score)
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
