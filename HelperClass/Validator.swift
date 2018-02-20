//
//  Validator.swift
//  doctor
//
//  Created by Abdelrahman Ahmed Shawky on 2/19/18.
//  Copyright © 2018 andrew. All rights reserved.
//

import Foundation
import UIKit
import SkyFloatingLabelTextField

class Validator {
    class func validGroupname(_ candidate: String) -> Bool {
        let groupnameRegex = "[A-Z0-9a-z_]+"
        return (NSPredicate(format: "SELF MATCHES %@", groupnameRegex).evaluate(with: candidate))
    }
    
    class func validatePhoneNumber(text : String) -> Bool {
        return !((text.characters.count >= 15 || !text.isNumber || text.characters.count < 11)  && text.characters.count != 0)
    }
    
    class func validateVerificationCode(text : String) -> Bool {
        let codeRegex = "[0-9]{4}"
        return (NSPredicate(format: "SELF MATCHES %@", codeRegex).evaluate(with: text))
    }
    
    class func validatePassword(text: String) -> Bool {
        return !((text.characters.count > 32 || text.characters.count <= 5) && text.characters.count != 0 )
    }
    
    class func validateEmail(_ candidate: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        return (NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: candidate))
    }
    
    class func validateAge(text: Int) -> Bool {
        return !(text > 100)
    }
    
    class func validateInputs(inputs : [SkyFloatingLabelTextField]) -> Bool {
        var validation = true
        for input in inputs {
            if input.errorMessage != "" {
                input.shake(count: 3, for: 0.3, withTranslation: 10)
                validation = false
            }
            
            if input.text?.characters.count == 0 {
                input.errorMessage = "Required"
                input.shake(count: 3, for: 0.3, withTranslation: 10)
                validation = false
            }
        }
        return validation
    }
    
    class func validateFirstLast(text: String) -> Bool {
        
        return (text.characters.count != 0 && !text.isNumber)
    }
}
