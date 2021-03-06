//
//  PlayingCard.swift
//  CardGame
//
//  Created by Corbett, Grayson on 10/25/16.
//  Copyright © 2016 Corbett, Grayson. All rights reserved.
//

import UIKit

class PlayingCard : Card
{
    internal var rank : Int

    internal var suit : String

    internal var color : UIColor

    internal var frontImage : UIImage
        
    func getRank() -> Int
    {
        return self.rank
    }
    
    func getSuit() -> String
    {
        return suit
    }
    
    func getColor() -> UIColor
    {
        return color
    }
    
    func getFrontImage() -> UIImage
    {
        return frontImage
    }
    
    func setRank(_ rank: Int) -> Void
    {
        self.rank = rank
      /*  if (suit.equals("Spades") || suit.equals("Clubs"))
        {
            self.color = black ! ! ! come back to this later ! ! !
        }   else if (suit.equals("Hearts") || suit.equals("Diamonds"))
        {
            self.color = red ! ! ! FIX THIS ONE TOO ! ! !
        }
      */

    }
    
    func getCardData() -> String
    {
        let data = "\(PlayingCard.validRanks()[rank]) \(suit)"
        return data
    }
    
    func setSuit(_ suit: String) -> Void
    {
        self.suit = suit
    }
    
    func setColor(_ color: UIColor) -> Void
    {
        self.color = color
    }
    
    func setFrontImage(_ frontImage: UIImage) -> Void
    {
        self.frontImage = frontImage
    }
    
    override init()
    {
        self.frontImage = UIImage(named: "cardfront")!
        self.color = UIColor.black
        self.rank = 0
        self.suit = String()
        super.init()
    }
    
    init(withRank: Int, ofSuit: String)
    {
        frontImage = UIImage(named: "cardfront")!
        color = UIColor.black
        rank = withRank
        suit = ofSuit
        super.init()
    }
    
    
    override func toString() -> String
    {
    let facing : String
    if self.faceShown()
    {
        facing = "up"
    }
    else
    {
        facing = "down"
    }
    
    let description = "The card's rank is \(rank), is the color of \(color), and is of the \(suit) suit. The card is face \(facing) . The back of the card is \(self.getBackImage)."
    
    return description
    }
    
    class func validRanks() -> [String]
    {
        return ["??","A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    }
    
    class func validSuits() -> [String]
    {
        return ["♠️","♥️","♣️","♦️"]
    }
    
    class func maxRank() -> Int
    {
        return validRanks().count - 1
    }
}
