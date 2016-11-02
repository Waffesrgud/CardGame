//
//  Card.swift
//  CardGame
//
//  Created by Corbett, Grayson on 10/25/16.
//  Copyright © 2016 Corbett, Grayson. All rights reserved.
//

import UIKit

class Card
{
    internal var backImage : UIImage
    internal var isFaceUp : Bool
    
    init()
    {
        backImage = UIImage(named: "cardback")!
        isFaceUp = false
    }
    
   func toString() -> String
    {
        let description = "The card is \(isFaceUp)"
        return description
    }
    
    func getBackImage() -> UIImage
    {
        return backImage
    }
    
    func faceShown() -> Bool
    {
        return isFaceUp
    }
    
    func setBackImage(backImage : UIImage) -> Void
    {
        self.backImage = backImage
    }
    
    func setFaceUp(isFaceUp: Bool) -> Void
    {
        self.isFaceUp = isFaceUp
    }
}
