//
//  ViewController.swift
//  TextFields
//
//  Created by Jason on 11/11/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // Outlets
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var lockEditSwitch: UISwitch!

    
    // Text Field Delegate objects
    let zipCodeDelegate = ZipCodeTextFieldDelegate()
    let currencyDelegate = CurrencyTextFieldDelegate()
    let lockableTextDelegate = self
    
    // Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Set the three delegates
        self.textField1.delegate = zipCodeDelegate
        self.textField2.delegate = currencyDelegate
        self.textField3.delegate = self
        
        //make sure editing is off in textfield 3
        self.textField3.userInteractionEnabled = false
    }

    
    // Text Field Delegate Methods
    

    @IBAction func flipSwitch(sender: AnyObject) {
        if lockEditSwitch.on {
            textField3.userInteractionEnabled = true
            
        } else {
            textField3.userInteractionEnabled = false
        }
        
    }
    
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {

        // Figure out what the new text will be, if we return true
        var newText: NSString = textField.text
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
        
        // returning true gives the text field permission to change its text
        return true;
    }
    
    func textShouldBeginEditing(textField: UITextField) -> Bool {
        if(textField == self.textField1){
            println("hi there")
            self.view.endEditing(true)
            
        };
        return false;
    }
    
}

