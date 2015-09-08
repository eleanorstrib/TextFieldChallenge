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
        
        var currencyRange: NSRange
        
        // set a variable for the current and updated text
        var currentText = textField.text as NSString
        currentText = currentText.stringByReplacingCharactersInRange(range, withString: string)
        currencyRange = currentText.rangeOfString(currentText as String)
        
        //Invoke instance of NSNumberFormatter
        //convert string to a float
        let formatter = NSNumberFormatter()
        let currencyInt = formatter.numberFromString(currentText as String)
        let currencyFloat = (currencyInt!.floatValue)/100

        //Use currency style method to convert our float
        //to a currency formatted string
        formatter.numberStyle = .CurrencyStyle
        formatter.locale = NSLocale.currentLocale()

        var currencyFormatted = String()
        
        currencyFormatted = formatter.stringFromNumber(currencyFloat)!

        currentText = currentText.stringByReplacingCharactersInRange(currencyRange, withString: currencyFormatted)

        //print statements to debug
        println(currencyFormatted)
        println(currencyFormatted.dynamicType)
        println(currentText as String)
        println(currentText.dynamicType)

        return true

    }
}