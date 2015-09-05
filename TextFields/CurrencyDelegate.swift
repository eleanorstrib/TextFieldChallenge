//
//  CurrencyDelegate.swift
//  TextFields
//
//  Created by Eleanor Stribling on 9/4/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import Foundation
import UIKit

class CurrencyTextFieldDelegate: NSObject, UITextFieldDelegate {
    //controls currency field input
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        //trying out an approach that value will be set to 0,
        //convert string to number display converted

        let newText : Int? = textField.text.toInt()
        var formatter = NSNumberFormatter()
        formatter.numberStyle = .CurrencyStyle
        
        formatter.stringFromNumber(newText!)
        println(newText)
        println(newText.dynamicType)
        return true
        //replace 0 with numbers and show format as currency
    }
}