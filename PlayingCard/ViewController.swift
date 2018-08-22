//
//  ViewController.swift
//  PlayingCard
//
//  Created by Leonardo Garcia  on 8/2/18.
//  Copyright © 2018 Leonardo Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var deck = PlayingCardDeck()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 1...10 {
            if let card = deck.draw() {
                print("\(card)")
            }
        }
    }

    
}

