//
//  CardGameController.swift
//  CardGame
//
//  Created by Corbett, Grayson on 10/27/16.
//  Copyright © 2016 Corbett, Grayson. All rights reserved.
//

import UIKit

class CardGameController : UIViewController
{
    @IBOutlet weak var cardButton: UIButton!
    
    @IBOutlet weak var cardLabel: UILabel!

    private lazy var currentDeck = PlayingCardDeck()
    
    private lazy var clickCount = Int()
    
    override func viewDidLoad()
    {
        let tempCard = Card()
        print(tempCard.toString())
        let otherTemp = PlayingCard()
        print(otherTemp.toString())
    }
    
    @IBAction func flipCard(sender: UIButton)
    {
        clickCount += 1
        let words = "Wowie, is this cookie clicker wow, you have \(clickCount) grandmas"
        cardLabel.text = words
        if let currentCard = currentDeck.drawCard()as? PlayingCard
        {
            cardButton.setTitle("\(currentCard.getCardData())", forState: UIControlState.Normal)
        }
    }
}