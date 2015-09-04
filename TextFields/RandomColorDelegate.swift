//
//  RandomColorDelegate.swift
//  TextFields
//
//  Created by Eleanor Stribling on 9/4/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import Foundation
import UIKit

class RandomColorTextFieldDelegate: NSObject, UITextFieldDelegate {
    //method returns random color
    
    //create an array of color objects
    let colors = [UIColor.redColor(), UIColor.orangeColor(), UIColor.yellowColor(),
        UIColor.greenColor(), UIColor.blueColor(), UIColor.purpleColor(), UIColor.brownColor()];
    
    //get a random number from a range the same length as the array to index the color
    func randomColor() -> UIColor {
        let randomIndex = Int(arc4random() % UInt32(colors.count))
        return colors[randomIndex]
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        textField.textColor = self.randomColor()
        
        return true
    }
}