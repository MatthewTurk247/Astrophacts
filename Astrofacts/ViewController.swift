//
//  ViewController.swift
//  Astrofacts
//
//  Created by Matthew Turk on 11/5/15.
//  Copyright © 2015 Turk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var astrofactLabel: UILabel!
    @IBOutlet weak var astrofactButton: UIButton!
    @IBOutlet var open: UIBarButtonItem!
    @IBOutlet var astrofactSource: UIButton!
    
    
    @IBOutlet var shareButton: UIButton!
    @IBOutlet var didYouKnow: UILabel!
    
//    @IBAction func shareFact(sender: AnyObject) {
//        
//        let activityView = UIActivityViewController(activityItems: ["Did you know \(astrofactLabel.text!)?\n\nDownload Astrophacts by Matthew Turk on the App Store."], applicationActivities: nil)
//        activityView.setValue("Did You Know This About Astrophysics?", forKey: "subject")
//        //        activityView.completionWithItemsHandler = {
//        //            (s: String!, ok: Bool, items: [AnyObject]!, err:NSError!) -> Void in {
//        //
//        //            }
//        if let pop = activityView.popoverPresentationController {
//            let v = shareButton as UIButton // sender would be the button view tapped, but could be any view
//            pop.sourceView = v
//            pop.sourceRect = v.bounds
//        }
//        self.presentViewController(activityView, animated:true, completion:nil)
//    }

    
    @IBAction func goToSource(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: sourceLinksArray[numNum])!)
    }
    

    let factsArray = ["The largest star in the universe is being consumed by a black hole", "Since there is no medium for sound to travel, space will always be eerily silent", "Venus rotates slower than it orbits the sun, making a day outlast a year", "If two metals touch in space, they will bond through cold welding and be eternally stuck together", "NASA classifies stars by temperature and one from the coldest class is 20ºC", "Neutron stars implode so hard that all of their atoms melt together leaving only neutrons", "There's no wind on the moon, so astronaut footprints will be there forever.", "The sun's mass is 99% of the mass in the solar system", "The planet 55 Cancri-e is mostly made of diamond, worth $26.9 nonillion", "More energy from the sun hits Earth every hour than the planet uses in a year", "Due to the Drake Equation, there could be up to 140,000 intelligent civilizations in our galaxy", "Since gravity doesn't compress your spine in space, astronauts get taller when they leave earth", "If you held your breath unprotected in space, the loss of pressure would cause your lungs to expand and explode", "We've found over 1,500 exoplanets in the past 20 years", "Theoretically all the other planets in the solar system could fit between Earth and the moon.", "If you traveled at the speed of light, you would stop aging and you'd warp to the end of time", "If we ever found the end or repeat of an irrational number, the universe could be a computer simulation", "The reason why we only see one side of the moon is because of tidal locking", "Saturn's rings are made from billions of particles ranging from grains of sand to mountain-size chunks of ice", "In 2 billion years, the Milky Way and the nearst galaxy Andromeda will collide creating Milkdromeda", "We have discovered 5% of the universe", "Uranus has an east and west pole", "It takes our solar system 230 million years to rotate around the Milky Way", "Surface temperatures on Venus can rise past 800ºF, the planet melts space probes", "The human race has existed for 1/31,536,000 of time", "NASA is currently working on the development of a warp drive that could get astronotus to Alpha Centauri in 2 weeks"]
    //°\\
    let sourcesArray = ["Space.com", "Cornell", "Space.com", "How It Works", "NASA", "Space.com", "Space.com", "BBC", "Yale", "National Geographic", "Business Insider", "Space.com", "CNET", "Exoplanet.eu", "Universe Today", "YouTube", "YouTube", "Space Answers", "Space.com", "Universe Today", "NASA", "NASA", "IFLScience", "NASA", "Business Insider", "Gizmodo"]
    
    let sourceLinksArray = ["http://www.space.com/12719-black-hole-swallows-star-nasa-swift.html", "http://curious.astro.cornell.edu", "http://www.space.com/15988-venus-planet-weird-facts.html", "http://www.howitworksdaily.com/do-metals-fuse-together-in-space/", "http://www.nasa.gov/mission_pages/WISE/news/wise20110823.html", "http://www.space.com/22180-neutron-stars.html", "http://www.space.com/14740-footprints-moon.html", "http://www.bbc.co.uk/science/space/solarsystem/sun_and_planets/sun", "http://news.yale.edu/2012/10/11/nearby-super-earth-likely-diamond-planet", "http://environment.nationalgeographic.com/environment/global-warming/solar-power-profile/", "http://www.businessinsider.com/the-drake-equation-exoplanets-and-alien-life-2015-1", "http://www.space.com/19116-astronauts-taller-space-spines.html", "http://www.cnet.com/news/what-happens-to-the-unprotected-human-body-in-space/", "http://exoplanet.eu/catalog/", "http://www.universetoday.com/103206/what-is-the-distance-to-the-moon/", "https://www.youtube.com/watch?v=ACUuFg9Y9dY", "https://www.youtube.com/watch?v=ACUuFg9Y9dY", "http://www.spaceanswers.com/deep-space/what-is-tidal-locking/", "www.space.com/23235-rings-of-saturn.html", "http://www.universetoday.com/1604/when-our-galaxy-smashes-into-andromeda-what-happens-to-the-sun/", "http://solarsystem.nasa.gov/planets/profile.cfm?Object=Beyond", "http://solarsystem.nasa.gov/planets/profile.cfm?Object=Uranus", "http://www.iflscience.com/space/space-oddities-unbelievable-facts-about-our-universe", "http://solarsystem.nasa.gov/planets/profile.cfm?Object=Venus&Display=OverviewLong", "http://www.businessinsider.com/cosmic-calendar-from-cosmos-premier-2014-3", "http://gizmodo.com/5942634/nasa-starts-development-of-real-life-star-trek-warp-drive?utm_source=deadspin.com&utm_medium=recirculation&utm_campaign=recirculation"]
    var numNum = Int()
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    var randomColor = UIColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.setNeedsStatusBarAppearanceUpdate()
        var attributes = [
            NSForegroundColorAttributeName: UIColor.whiteColor(),
            NSFontAttributeName: UIFont(name: "Futura", size: 18)!
        ]
        self.navigationController?.navigationBar.titleTextAttributes = attributes
        
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            astrofactLabel.font = UIFont(name: "Futura", size: 32.0)
            didYouKnow.font = UIFont(name: "Futura", size: 28.0)
            astrofactSource.titleLabel!.font = UIFont(name: "Futura", size: 28.0)
        } else if UIDevice.currentDevice().userInterfaceIdiom == .Pad {
//            astrofactLabel.font = UIFont(name: "Futura", size: 100.0)
//            didYouKnow.font = UIFont(name: "Futura", size: 96.0)
//            astrofactSource.titleLabel!.font = UIFont(name: "Futura", size: 48.0)
//            
//            astrofactLabel.frame.width = self.view.bounds.width * 0.8
//            
//            astrofactLabel.frame.width = self.view.frame.width * 0.8
        }
        
        randomColor = colorWheel.randomColor()
        var theNum = factBook.randomFact()
        astrofactLabel.text = factsArray[theNum]
        astrofactSource.setTitle(sourcesArray[theNum], forState: UIControlState.Normal)
        numNum = theNum
        print(sourceLinksArray[numNum])
        view.backgroundColor = randomColor
        astrofactButton.tintColor = randomColor
        self.navigationController?.navigationBar.barTintColor = randomColor
        open.target = self.revealViewController()
        open.action = Selector("revealToggle:")
        //self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showFunFact() {
        var theNum = factBook.randomFact()
        randomColor = colorWheel.randomColor()
        view.backgroundColor = randomColor
        UIView.transitionWithView(astrofactLabel, duration: 0.25, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: { () -> Void in
            self.astrofactLabel.text = self.factsArray[theNum]
            }, completion: nil)
        //astrofactLabel.text = factBook.randomFact()
        //astrofactButton.tintColor = randomColor
        astrofactSource.setTitle(sourcesArray[theNum], forState: UIControlState.Normal)
        numNum = theNum
        print(sourceLinksArray[numNum])
        self.navigationController?.navigationBar.barTintColor = randomColor
    }


}

