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
    private var suit : String

    func getRank() -> Int
    {
        return self.rank
    }
    
    func getSuit() -> String
    {
        return suit
    }
    
    func setRank(rank: Int) -> Void
    {
        self.rank = rank
    }
    
    func getSuit(suit: String) -> Void
    {
        self.suit = suit
    }
}