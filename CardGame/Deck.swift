//
//  Deck.swift
//  CardGame
//
//  Created by Corbett, Grayson on 10/31/16.
//  Copyright © 2016 Corbett, Grayson. All rights reserved.
//

import Foundation

class Deck
{
    lazy var cards = [Card]()
    lazy var randomSpot = Int()
    func shuffleDeck() -> Void
    {
        var temp = [Card]()
        while self.cards.count > 0
        {
            randomIndex()
            //Removes the card from the random spot.
            let removedCard = cards.removeAtIndex(randomSpot)
            //Adds card to the end of the list.
            temp.append(removedCard)
        }
        //Take the new deck and make it the standard.
        cards = temp
    }
    func riffleShuffle() -> Void
    {
        for index in 1 ... cards.count/2
        {
            cards.insert(cards.removeAtIndex(self.cards.count), atIndex: index*2)
        }

    }
    
    func cutDeck() -> Void
    {
        
    }
    //one teased the monkey and the monkey said cheek cheek cheek cheek cheek
    func drawCard() -> Card?
    {
        if self.cards.count > 0
        {
            return cards.removeAtIndex(0)
        }
        else
        {
            return nil
        }
    }
    
    func drawRandomCard() -> Card?
    {
        if self.cards.count > 0
        {
            randomIndex()
            return cards.removeAtIndex(randomSpot)
        }
        else
        {
          return nil
        }
    }
    
    func randomIndex() -> Int
    {
       randomSpot = (Int) (arc4random() % UInt32(self.cards.count))
       return randomSpot
    }
}