//
//  RLTextField.swift
//  CustomTextField
//
//  Created by Iwai Ritsuko on 2015/7/13.
//  Copyright (c) 2015年 RiccaLokka. All rights reserved.
//

import UIKit

@objc protocol RLTextFieldDelegate {
    optional func textFieldDidEndEditingWithTag()
}

class RLTextField: UITextField, UITextFieldDelegate {
    var textFieldDelegate : RLTextFieldDelegate?
    var limitCount = 0
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.delegate = self
    }
    
    //MARK-: UITextFieldDelegate Method
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        var combineText : NSString = (textField.text as NSString).stringByReplacingCharactersInRange(range, withString:string)
        
        if self.limitCount > 0 && combineText.length > self.limitCount {
            return false
        }
        return true
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.endEditing(true)
        return true
    }
}
