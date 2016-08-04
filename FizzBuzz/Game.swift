//
//  Game.swift
//  FizzBuzz
//
//  Created by v2team on 02/08/16.
//  Copyright © 2016 Harshal. All rights reserved.
//

import Foundation

class Game: NSObject {
    
    var score: Int!
    var brain: Brain!
    
    override init() {
        super.init()
        score = 0
        brain = Brain()
    }
    
//    func play(move: String) -> Bool{
    func play(move: String) -> (right: Bool, score: Int){
        let result = brain.check(score + 1)
        
        if result == move {
            score = score + 1
            return (true, score)
        } else {
            return (false, score)
        }
    }
}