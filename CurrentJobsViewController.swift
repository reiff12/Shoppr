//
//  CurrentJobsViewController.swift
//  Shoppr
//
//  Created by Tyler on 12/19/14.
//  Copyright (c) 2014 Tyler Reiff. All rights reserved.
//

import UIKit

class CurrentJobsViewController: UIViewController {
    
    let tableData = ["No Jobs Yet","Go to the Shopper View"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        //custom tableView population
    func tableView(tableView: UITableView!, numberOfRowsInSectin section: Int) -> Int
    {
        return self.tableData.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        let cell:UITableViewCell = UITableViewCell(style:UITableViewCellStyle.Default, reuseIdentifier:"cell")
        cell.textLabel?.text = tableData[indexPath.row]
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
