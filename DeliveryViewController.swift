//
//  DeliveryViewController.swift
//  Shoppr
//
//  Created by Tyler on 12/19/14.
//  Copyright (c) 2014 Tyler Reiff. All rights reserved.
//

import Foundation
import UIKit

class DeliveryViewController: UIViewController {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //Grocery List pt 2
        
        var list = PFObject(className: "List")
        list.addObject("Where the groceries will be delivered", forKey: "DelivAddress")
        list.addObject("and when too", forKey: "DelivTime")
        list.addObject("any special instructions for the driver", forKey: "SpecialInstructions")
        list.save()
        

    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
                    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
     //func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    
        //var DestViewController : ReviewViewController = segue.destinationViewController as ReviewViewController
        
        //DestViewController.LabelText = TextField.text
    }