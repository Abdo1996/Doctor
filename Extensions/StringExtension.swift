//
//  StringExtension.swift
//
//

import UIKit

extension String  {
    var isNumber : Bool {
        get{
            return !self.isEmpty && self.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
        }
    }
    
    var isAlphabetAndWhitespace : Bool {
        return range(of: ".*[^A-Za-z ].*", options: .regularExpression) == nil
    }
    
    var isAlphabet: Bool {
        return range(of: "[^A-Za-z]", options: .regularExpression) == nil
    }
}
