//
//  ViewController.swift
//  FanGen
//
//  Created by William Judd on 8/27/19.
//  Copyright © 2019 William Judd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0

    @IBOutlet weak var diceOne: UIImageView!
    @IBOutlet weak var diceTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollDice(_ sender: UIButton) {
    
        randomDiceIndex1 = Int.random(in: 0...5)
        randomDiceIndex2 = Int.random(in: 0...5)
        print("\(randomDiceIndex1) \(randomDiceIndex2)")
    
        diceOne.image = UIImage(named: diceArray[randomDiceIndex1])
        diceTwo.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
}

