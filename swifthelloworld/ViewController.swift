//
//  ViewController.swift
//  swifthelloworld
//
//  Created by Suresh.Balla on 18/03/16.
//  Copyright © 2016 sureshballa. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let array = ["Item1", "Item2", "Item3"];
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.rowHeight = 70;
        tableView.backgroundView = UIImageView(image: UIImage(named: "background"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("customcell")! as UITableViewCell
        
        if(indexPath.item % 2 == 0){
            cell.backgroundColor = UIColor.clearColor()
        }
        else{
            cell.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.2)
            cell.textLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        }
        
        cell.textLabel?.text = array[indexPath.item]
        
        return cell
    }

}

