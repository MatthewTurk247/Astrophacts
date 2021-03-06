//
//  Astrofact.swift
//  Astrofacts
//
//  Created by Matthew Turk on 11/5/15.
//  Copyright © 2015 Turk. All rights reserved.
//

import Foundation

struct FactBook {
    let factsArray = ["The largest star in the universe is being consumed by a black hole", "Since there is no medium for sound to travel, space will always be eerily silent", "Venus rotates slower than it orbits the sun, making a day outlast a year", "If two metals touch in space, they will bond through cold welding and be eternally stuck together", "NASA classifies stars by temperature and one from the coldest class is 20ºC", "Neutron stars implode so hard that all of their atoms melt together leaving only neutrons", "There's no wind on the moon, so astronaut footprints will be there forever.", "The sun's mass is 99% of the mass in the solar system", "The planet 55 Cancri-e is mostly made of diamond, worth $26.9 nonillion", "More energy from the sun hits Earth every hour than the planet uses in a year", "Due to the Drake Equation, there could be up to 140,000 intelligent civilizations in our galaxy", "Since gravity doesn't compress your spine in space, astronauts get taller when they leave earth", "If you held your breath unprotected in space, the loss of pressure would cause your lungs to expand and explode", "We've found over 1,500 exoplanets in the past 20 years", "Theoretically all the other planets in the solar system could fit between Earth and the moon.", "If you traveled at the speed of light, you would stop aging and you'd warp to the end of time", "If we ever found the end or repeat of an irrational number, the universe could be a computer simulation", "The reason why we only see one side of the moon is because of tidal locking", "Saturn's rings are made from billions of particles ranging from grains of sand to mountain-size chunks of ice", "In 2 billion years, the Milky Way and the nearst galaxy Andromeda will collide creating Milkdromeda", "We have discovered 5% of the universe", "Uranus has an east and west pole", "It takes our solar system 230 million years to rotate around the Milky Way", "Surface temperatures on Venus can rise past 800ºF, the planet melts space probes", "The human race has existed for 1/31,536,000 of time", "NASA is currently working on the development of a warp drive that could get astronotus to Alpha Centauri in 2 weeks"]
    
//    func randRange (lower: Int, upper: Int) -> Int {
//        return lower + Int(arc4random_uniform(UInt32(upper - lower + 1)))
//    }
    
    func randomFact () -> Int {
        
        let unsignedArrayCount = UInt32(factsArray.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomNumber = Int(unsignedRandomNumber)
        return randomNumber
    }
    
    
}