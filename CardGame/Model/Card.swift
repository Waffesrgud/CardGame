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
    private var backImage : UIImage
    {
        get{}
        set{}
    }
    private var isFaceUp : Bool
    {
        get{}
        set{}
    }
    
    init()
    {
        backImage = UIImage()
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
}
