//
//  savedListCreateViewController.swift
//  Shoppr
//
//  Created by Tyler on 3/30/15.
//  Copyright (c) 2015 Tyler Reiff. All rights reserved.
//

import UIKit

class savedListCreateViewController: UIViewController {

    @IBOutlet var listTitle: UITextField!
    
   
    @IBOutlet var list: UITextView!
    
    @IBAction func save(sender: AnyObject) {
        
        var savedList = PFObject(className: "SavedList")
        savedList["ListTitle"] = listTitle.text
        savedList["List"] = list.text
        
        savedList.saveInBackgroundWithBlock {
            (success: Bool, error: NSError!) -> Void in
            if (success) {
                // The object has been saved.
            } else {
                // There was a problem, check error.description
            }
        }
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
