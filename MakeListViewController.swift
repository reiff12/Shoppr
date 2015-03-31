//
//  MakeListViewController.swift
//  Shoppr
//
//  Created by Tyler on 3/29/15.
//  Copyright (c) 2015 Tyler Reiff. All rights reserved.
//

import UIKit


class MakeListViewController: UIViewController {
    
    func displayAlert(title:String, error:String) {
        
        var alert = UIAlertController(title: title, message: error, preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            
            self.dismissViewControllerAnimated(true, completion: nil)
            
        }))
        
        self.presentViewController(alert, animated: true, completion: nil)
        
    }


    @IBOutlet var listView: UITextView!
    
    @IBOutlet var delvAdd: UITextField!
    
    @IBOutlet var specInst: UITextField!
    
    @IBAction func saveList(sender: AnyObject) {
        
        var error = ""
        
        if listView.text == "" || delvAdd.text == "" || specInst.text == "" {
            
            error = "Please fill out the entire form"
            
        }
        
        if error != "" {
            
            displayAlert("Error im form", error: error)
            
        } else {
        
        var order = PFObject(className: "Order")
        order["listText"] = listView.text
        order["delAdd"] = delvAdd.text
        order["specInst"] = specInst.text
        order["username"] = PFUser.currentUser()
        
            order.saveInBackgroundWithBlock {
                (success: Bool, error: NSError!) -> Void in
                if (success) {
                    // The object has been saved.
                } else {
                    // There was a problem, check error.description
                    
                }
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
