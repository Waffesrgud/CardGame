//
//  PlayingCardDeck.swift
//  CardGame
//
//  Created by Corbett, Grayson on 10/31/16.
//  Copyright © 2016 Corbett, Grayson. All rights reserved.
//

import Foundation

class PlayingCardDeck : Deck
{

    override init()
    {
        
        super.init()
        
         for suit in PlayingCard.validSuits()
        {
            
            for var rank = 1; rank < PlayingCard.maxRank(); rank += 1
            {
                let currentCard = PlayingCard(withRank: rank, ofSuit: suit)
                self.cards.append(currentCard)
            }
        }
    }
    
    func orderDeck() -> Void
    {
        var temp = [PlayingCard]()
        for suit in PlayingCard.validSuits()
        {
            for var rank = 1; rank < PlayingCard.maxRank(); rank += 1
            {
            let index = cards.indexOf({PlayingCard($0).suit == suit && PlayingCard($0).rank == rank})
            let tempCard = PlayingCard(cards.removeAtIndex(index!))
            temp.append(tempCard)
            }
        }
    }
}