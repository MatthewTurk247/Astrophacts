//
//  BackTableVC.swift
//  Astrofacts
//
//  Created by Matthew Turk on 11/5/15.
//  Copyright © 2015 Turk. All rights reserved.
//

import Foundation

class BackTableVC:UITableViewController {
    var tableArray = [String]()
    override func viewDidLoad() {
        tableArray = ["1", "2", "3"]
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = tableArray[indexPath.row]
        return cell
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destVC = segue.destinationViewController as! ViewController
        var indexPath = self.tableView.indexPathForSelectedRow
        //Right here you see that this is how you can see which one got selected
        if indexPath == NSIndexPath(index: 0) {
            print("Selected 1")
        }
        
        //Remember later, to make the other view controllers have the ability to open the reveal controller, you add a button at the top and make it an outlet and do this:
//        open.target = self.revealViewController()
//        open.action = Selector("revealToggle:")
//        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
    
}