//
//  CatagoriesViewController.swift
//  Shoppr
//
//  Created by Tyler on 12/18/14.
//  Copyright (c) 2014 Tyler Reiff. All rights reserved.
//

import UIKit

class CatagoriesViewControllerup: UIViewController {

    let tableData = ["Meats & Seafood","Produce","Deli","Bakery","Frozen","Dairy","Soup & Canned Goods","Condiments & Sauce","Packaged Bread","Snacks","Breakfast & Cereal","Cooking and Baking Supplies", "Baby & Childcare", "Paper & Plastic Goods", "Cleaning Supplies","Misc."]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        //custom tableView population
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return self.tableData.count
    }
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
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
