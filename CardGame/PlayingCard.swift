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
    private var rank : Int
    {
        get
        {
            return self.rank
        }
        set(rank)
        {
            self.rank = rank
        }
    }
    private var suit : String
    {
        get
        {
            return self.suit
        }
        set(suit)
        {
            self.suit = suit
        }
    }
    private var color : UIColor
    {
        get
        {
            return self.color
        }
        set(color)
        {
            self.color = color
        }
    }
    private var frontImage : UIImage
    {
        get
        {
            return self.frontImage
        }
        set(frontImage)
        {
            self.frontImage = frontImage
        }
    }

        
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
    
    func setRank(rank: Int) -> Void
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
    
    func setSuit(suit: String) -> Void
    {
        self.suit = suit
    }
    
    func setColor(color: UIColor) -> Void
    {
        self.color = color
    }
    
    func setFrontImage(frontImage: UIImage) -> Void
    {
        self.frontImage = frontImage
    }
    
    override init()
    {
        super.init()

        frontImage = UIImage(named: "cardfront")!
        color = UIColor.blackColor()
        rank = 0
        suit = ""
    }
    
    init(withRank: Int, ofSuit: String)
    {
        super.init()
        frontImage = UIImage(named: "cardfront")!
        color = UIColor.blackColor()
        
        rank = withRank
        suit = ofSuit
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
    
    class func cardRanks() -> [String]
    {
        return ["??","A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    }
    
    class func validSuits() -> [String]
    {
        return [ "Spades", "Hearts", "Clubs", "Diamonds"]
    }
}