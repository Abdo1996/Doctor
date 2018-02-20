//
//  validationTxtfile.swift
//  SAl
//
//  Created by Abdelrahman Ahmed Shawky on 2/6/18.
//  Copyright © 2018 Abdelrahman Ahmed Shawky. All rights reserved.
//

import Foundation
import UIKit
class isvalidation {
    
    func Validate(Email:UITextField,password:UITextField) -> Bool{
        var valid:Bool = true
        if (Email.text?.isEmpty)! {
            //Change the placeholder color to red for textfield email if
            Email.attributedPlaceholder = NSAttributedString(string: "Please enter Email ID", attributes: [NSAttributedStringKey.foregroundColor: UIColor.red])
            valid = false
        }else{
            let validatephone = isNumber(value:Email.text!)
            if !validatephone {
                valid = isValidEmail(testStr: Email.text!)
                if !valid{
                    self.AnimationShakeTextField(textField: Email)
                }
            }
        }
        if (password.text?.isEmpty)!{
            // Change the placeholder color to red for textfield passWord
            password.attributedPlaceholder = NSAttributedString(string: "Please enter Password", attributes: [NSAttributedStringKey.foregroundColor: UIColor.red])
            valid = false
        }else{
            let  paswordtxt  = password.text!
            if (paswordtxt.characters.count <= 5){
                valid = false
                self.AnimationShakeTextField(textField:password)
            }
        }
        return valid
    }
    func ValidateRegister(Email:UITextField,password:UITextField,MobilePhone:UITextField,Name:UITextField) -> Bool {
        var valid:Bool = true
        if (Email.text?.isEmpty)! {
            //Change the placeholder color to red for textfield email if
            Email.attributedPlaceholder = NSAttributedString(string: "Please enter Email ID", attributes: [NSAttributedStringKey.foregroundColor: UIColor.red])
            valid = false
        }else{
                valid = isValidEmail(testStr: Email.text!)
                if !valid{
                    self.AnimationShakeTextField(textField: Email)
                }
        }
        if (password.text?.isEmpty)!{
            // Change the placeholder color to red for textfield passWord
            password.attributedPlaceholder = NSAttributedString(string: "Please enter Password", attributes: [NSAttributedStringKey.foregroundColor: UIColor.red])
            valid = false
        }else{
            let  paswordtxt  = password.text!
            if (paswordtxt.characters.count <= 5){
                valid = false
                self.AnimationShakeTextField(textField:password)
            }
            
        }
        if (Name.text?.isEmpty)! {
            //Change the placeholder color to red for textfield email if
            Email.attributedPlaceholder = NSAttributedString(string: "Please Enter Name", attributes: [NSAttributedStringKey.foregroundColor: UIColor.red])
            valid = false
        }
        
        if (MobilePhone.text?.isEmpty)! {
            //Change the placeholder color to red for textfield email if
            Email.attributedPlaceholder = NSAttributedString(string: "Please enter Mobile Phone", attributes: [NSAttributedStringKey.foregroundColor: UIColor.red])
            valid = false
        }else {
            valid = isNumber(value: MobilePhone.text!)
            if !valid{
                self.AnimationShakeTextField(textField: Email)
            }
        }
        return valid
    }
    
    func AnimationShakeTextField(textField:UITextField){
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.07
        animation.repeatCount = 4
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x:textField.center.x - 5 , y: textField.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x:textField.center.x + 5 , y: textField.center.y))
        //animation.toValue = NSValue(CGPoint: CGPointMake(textField.center.x + 5, textField.center.y))
        textField.layer.add(animation, forKey: "position")
    }
    func isValidEmail(testStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let result = emailTest.evaluate(with: testStr)
        return result
    }
    
    func validate(value: String) -> Bool {
        let PHONE_REGEX = "^((\\+)|(00))[0-9]{6,14}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result =  phoneTest.evaluate(with: value)
        return result
    }
    func isNumber(value: String) -> Bool {
        return !value.isEmpty && value.rangeOfCharacter(from: CharacterSet.decimalDigits) != nil && value.rangeOfCharacter(from: CharacterSet.letters) == nil
    }
    
}
