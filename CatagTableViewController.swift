//
//  ItemsTableViewController.swift
//  Shoppr
//
//  Created by Tyler on 12/19/14.
//  Copyright (c) 2014 Tyler Reiff. All rights reserved.
//

import UIKit

class CatagTableViewController: UITableViewController {
    
    var CatagTable: Array<AnyObject> = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
          CatagTable = ["WEEKLY DEALS!", "Meats & Seafood","Produce","Deli","Bakery","Frozen","Dairy","Soup & Canned Goods","Condiments & Sause","Packaged Bread","Snacks","Breakfast & Cereal","Cooking and Baking Supplies", "Baby & Childcare", "Paper & Plastic Goods", "Cleaning Supplies","Misc."]

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return CatagTable.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let CellId: String = "toItems"
        
        var cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier(CellId) as UITableViewCell
        
        if let ip =
            indexPath
        {
            cell.textLabel.text = CatagTable[ip.row] as String
        }
        
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    //override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //[segue.destinationViewController as ItemsViewController];
   
    }
    


