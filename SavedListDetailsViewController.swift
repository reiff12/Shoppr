//
//  SavedListDetailsViewController.swift
//  Shoppr
//
//  Created by Tyler on 4/1/15.
//  Copyright (c) 2015 Tyler Reiff. All rights reserved.
//

import UIKit

class SavedListDetailsViewController: UIViewController {

    @IBOutlet var listTitle: UILabel!
    
    @IBOutlet var listText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        var query = PFQuery(className: "Order")
        
        //query.whereKey("
        query.findObjectsInBackgroundWithBlock {
            (objects: [AnyObject]!, error: NSError!) -> Void in
            
            
            
            if error == nil {
                
                //if it worked
                println("it worked")
                // do something with the found objects
                
                
            } else {
                
                // list details of the failure
                println("error: \(error) \(error.userInfo!)")
            }
        }
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
