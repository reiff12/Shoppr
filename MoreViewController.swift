//
//  MoreViewController.swift
//  Shoppr
//
//  Created by Tyler on 3/30/15.
//  Copyright (c) 2015 Tyler Reiff. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController {
    
    
    @IBAction func logOut(sender: AnyObject) {
        
        PFUser.logOut()
        
        self.performSegueWithIdentifier("logOutSegue", sender: self)
    
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    override func viewDidAppear(animated: Bool) {

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
