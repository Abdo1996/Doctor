//
//  FirstLastVC.swift
//  doctor
//
//  Created by open vision on 6/13/1734 ERA1.
//  Copyright © 1734 ERA1 andrew. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class FirstLastVC: UIViewController {

    @IBOutlet weak var firstText: SkyFloatingLabelTextField!
    
    @IBOutlet weak var lastText: SkyFloatingLabelTextField!
    
    var checkinternet = internetCheck()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func firstlastAction(_ sender: UIButton) {
        
        if checkinternet.isInternet(){
            if !Validator.validateFirstLast(text: firstText.text!) && firstText.text!.characters.count != 0 {
                self.view.makeToast("First Name is not invalid", duration: 3.0, position: .bottom)
                return
            }
            if !Validator.validateFirstLast(text: lastText.text!) && firstText.text!.characters.count != 0 {
                self.view.makeToast("Last Name is not invalid", duration: 3.0, position: .bottom)
                return
            }
        }
        else{
            self.view.makeToast("network Unavailable", duration: 3.0, position: .bottom)
            return
        }
    }
    
}

extension FirstLastVC: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let text = NSString(string: textField.text!).replacingCharacters(in: range, with: string)
        switch(textField) {
        case firstText:
            if !Validator.validateFirstLast(text: text) && text.characters.count != 0{
                firstText.errorMessage = "Invalid  first name"
            }
            break
        case lastText:
            if !Validator.validateFirstLast(text: text) && text.characters.count != 0{
                firstText.errorMessage = "Invalid  first name"
            }
            break
        default:
            break
        }
        return true
    }
}
