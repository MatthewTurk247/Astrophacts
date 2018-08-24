//
//  ColorWheel.swift
//  Astrofacts
//
//  Created by Matthew Turk on 11/5/15.
//  Copyright © 2015 Turk. All rights reserved.
//

import Foundation
import UIKit

struct ColorWheel {
    
    let colorsArray = [
        
        UIColor(red:0.10, green:0.74, blue:0.61, alpha:1.0),
        UIColor(red:0.18, green:0.80, blue:0.44, alpha:1.0),
        UIColor(red:0.20, green:0.60, blue:0.86, alpha:1.0),
        UIColor(red:0.61, green:0.35, blue:0.71, alpha:1.0),
        UIColor(red:0.20, green:0.29, blue:0.37, alpha:1.0),
        UIColor(red:0.95, green:0.77, blue:0.06, alpha:1.0),
        UIColor(red:0.90, green:0.49, blue:0.13, alpha:1.0),
        UIColor(red:0.91, green:0.30, blue:0.24, alpha:1.0)
    ]
    
    
    func randomColor() ->UIColor {
        
        let unsignedArrayCount = UInt32(colorsArray.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomNumber = Int(unsignedRandomNumber)
        return colorsArray[randomNumber]
    }
    
    
    
}