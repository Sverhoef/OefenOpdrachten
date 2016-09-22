//
//  AboutViewController.swift
//  TheAnyApp2.1
//
//  Created by Sjors Verhoef on 14-09-16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import UIKit


class AboutViewController: UIViewController {
    
    @IBAction func Textfield(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion:nil)
        
        let alertController = UIAlertController(title: "You Typed", message:
            textField.text, preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
        
    }
    @IBOutlet weak var textField: UITextField!
    


    


    
    
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






