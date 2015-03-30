//
//  MakeListViewController.swift
//  Shoppr
//
//  Created by Tyler on 3/29/15.
//  Copyright (c) 2015 Tyler Reiff. All rights reserved.
//

import UIKit


class MakeListViewController: UIViewController {

    @IBOutlet var listView: UITextView!
    
    @IBOutlet var delvAdd: UITextField!
    
    @IBOutlet var specInst: UITextField!
    
    @IBAction func saveList(sender: AnyObject) {
        
        var order = PFObject(className: "Order")
        order["listText"] = listView.text
        order["delAdd"] = delvAdd.text
        order["specInst"] = specInst.text
        
            order.saveInBackgroundWithBlock {
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
