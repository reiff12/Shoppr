//
//  SignUpViewController.swift
//  Shoppr
//
//  Created by Tyler on 3/26/15.
//  Copyright (c) 2015 Tyler Reiff. All rights reserved.
//

import UIKit


class SignUpViewController: UIViewController {
    
    var signupActive = true
    
    
    var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
    
    
    func displayAlert(title:String, error:String) {
        
        var alert = UIAlertController(title: title, message: error, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            
            self.dismissViewControllerAnimated(true, completion: nil)
            
        }))
        
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
    
    
    @IBOutlet var username: UITextField!

    @IBOutlet var password: UITextField!
    
    
   
    @IBOutlet var alreadyRegistered: UILabel!
    
    @IBOutlet var signUpButton: UIButton!
    
    @IBOutlet var signUpLabel: UILabel!
    
    @IBOutlet var signUpToggleButton: UIButton!
    
    @IBAction func toggleSignUp(sender: AnyObject) {
        
        if signupActive == true {
            
            signupActive = false
            
            signUpLabel.text = "Use the form below to log in"
            
            signUpButton.setTitle("Log In", forState: UIControlState.Normal)
            
            alreadyRegistered.text = "Haven't Registered?"
            
            signUpToggleButton.setTitle("Sign Up", forState: UIControlState.Normal)
            
        } else {
            
                signupActive = true
                
                signUpLabel.text = "Use the form below to sign up"
                
                signUpButton.setTitle("Sign Up", forState: UIControlState.Normal)
                
                alreadyRegistered.text = "Already Registered?"
                
                signUpToggleButton.setTitle("Log In", forState: UIControlState.Normal)
            
        }
        
    }
    
    @IBAction func signUp(sender: AnyObject) {
            
        var error = ""
            
        if username.text == "" || password.text == "" {
                
            error = "Please enter a username and password"
                
        }
        
        if error != "" {

            displayAlert("Error im form", error: error)
        
        } else {
            
            
                var user = PFUser()
                user.username = username.text
                user.password = password.text
            
            activityIndicator = UIActivityIndicatorView(frame: CGRectMake(0, 0, 50, 50))
            activityIndicator.center = self.view.center
            activityIndicator.hidesWhenStopped = true
            view.addSubview(activityIndicator)
            activityIndicator.startAnimating()
            UIApplication.sharedApplication().beginIgnoringInteractionEvents()
            
            if signupActive == true {
                
                user.signUpInBackgroundWithBlock {
                    (succeeded: Bool!, signUpError: NSError!) -> Void in
                    
                    self.activityIndicator.stopAnimating()
                    UIApplication.sharedApplication().endIgnoringInteractionEvents()
                    
                    if signUpError == nil {
                        
                        if PFUser.currentUser() != nil {
                            
                            self.performSegueWithIdentifier("jumpToMainTable", sender: self)
                            }
                        } else {
                        
                        if let errorString = signUpError.userInfo?["error"] as? NSString{
                        
                        error = errorString
                            
                        } else {
                            
                            error = "Please try again later"
                            
                        }
                        
                        // Show the errorString somewhere and let the user try again.
                        
                        self.displayAlert("Couldn't Sign Up", error: error)
                        }
                    }
                } else {
                
                    PFUser.logInWithUsernameInBackground(username.text, password:password.text) {
                        (user: PFUser!, signInError: NSError!) -> Void in
                        if user != nil {
                            
                            self.performSegueWithIdentifier("jumpToMainTable", sender: self)
                            
                            println("Signed In")
                        
                            // Do stuff after successful login.
                        } else {
                            
                            self.displayAlert("Coundn't Log In", error: error)
                            // The login failed. Check error to see why.
                    }
                }
            }
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        if PFUser.currentUser() != nil {
            
            self.performSegueWithIdentifier("jumpToMainTable", sender: self)
            
        }
        
    }
    
    
    override func viewWillAppear(animated: Bool) {
        
        self.navigationController?.navigationBarHidden = true
    }
    
    
    override func viewWillDisappear(animated: Bool) {
        
        self.navigationController?.navigationBarHidden = false
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
