//
//  ViewController.swift
//  FizzBuzz
//
//  Created by v2team on 01/08/16.
//  Copyright © 2016 Harshal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var gameScore: Int?{
        didSet {
            guard let unwrappedScore = gameScore else {
                print("gameScore is nil")
                return
            }
            numberButton.setTitle("\(unwrappedScore)", forState: .Normal)
        }
    }
    var game: Game!
    @IBOutlet weak var numberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        game = Game()
        
        guard let checkedGame = game else {
            print("Game is nil")
            return
        }
        gameScore = checkedGame.score
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func play(move: String) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move)
        gameScore = response.score
    }
    
    @IBAction func buttonTapped(sender: AnyObject) {
        guard let unwrappedScore = gameScore else {
            print("Game score is nil")
            return
        }
        
        let nextScore = unwrappedScore + 1
        play("\(nextScore)")
    }
}

