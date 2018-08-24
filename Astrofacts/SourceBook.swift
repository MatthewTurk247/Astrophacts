//
//  SourceBook.swift
//  Astrofacts
//
//  Created by Matthew Turk on 11/21/15.
//  Copyright © 2015 Turk. All rights reserved.
//

import Foundation

struct SourceBook {
    let sourcesArray = ["Elephant",
        
        "Stars",
        "States"
    ]
    
    //    func randRange (lower: Int, upper: Int) -> Int {
    //        return lower + Int(arc4random_uniform(UInt32(upper - lower + 1)))
    //    }
    
    func randomSource () -> String {
        
        let unsignedArrayCount = UInt32(sourcesArray.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomNumber = Int(unsignedRandomNumber)
        return sourcesArray[randomNumber]
    }
    
    
}