//
//  ListViewController.swift
//  Shoppr
//
//  Created by Tyler on 3/25/15.
//  Copyright (c) 2015 Tyler Reiff. All rights reserved.
//

import UIKit
import CoreData

class ListViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var storePicker: UIPickerView!
    
    @IBOutlet weak var listCont: UITextView!
    
    @IBAction func saveList(sender: AnyObject) {
        
        var list = PFObject(className: "List")
        list.addObject("storePicker", forKey: "Store")
        list.addObject(listCont.text, forKey: "List")
    }
    
    // store picker view
    var stores : [String] = ["Price Chopper, 1220 Storrs Rd", "Big Y, 33 Fieldstone Commons"]
    
 
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {

        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return stores.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return stores[row]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        //Grocery List
        
        
        
        
        
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
