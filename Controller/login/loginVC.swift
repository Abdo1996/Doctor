//
//  loginVC.swift
//  doctor
//
//  Created by Abdelrahman Ahmed Shawky on 2/19/18.
//  Copyright © 2018 andrew. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField
import Toast_Swift
class loginVC: UIViewController {

    @IBOutlet var emailTxt: SkyFloatingLabelTextField!
    @IBOutlet var passwordTxt: SkyFloatingLabelTextField!
    var checkinternet = internetCheck()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.emailTxt.delegate = self
        self.passwordTxt.delegate = self
    }
    @IBAction func btnGoSecend(_ sender: Any) {
        if checkinternet.isInternet(){
            if !Validator.validateEmail(emailTxt.text!) && emailTxt.text!.characters.count != 0{
               self.view.makeToast("Email is not invalid", duration: 3.0, position: .bottom)
                return
            }
            if !Validator.validatePassword(text: passwordTxt.text!){
                self.view.makeToast("password is not invalid", duration: 3.0, position: .bottom)
                return
            }
            
        }
        else{
             self.view.makeToast("network Unavailable", duration: 3.0, position: .bottom)
            return
        }
    }
}










extension loginVC : UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let text = NSString(string: textField.text!).replacingCharacters(in: range, with: string)
        switch(textField) {
        case emailTxt :
            if !Validator.validateEmail(text) && text.characters.count != 0{
                emailTxt.errorMessage = "Invalid  email"
            } else if Validator.validateEmail(text) || text.characters.count == 0 {
                emailTxt.errorMessage = ""
            }
            break
        case passwordTxt :
            if !Validator.validatePassword(text: text){
                passwordTxt.errorMessage = "Invalid Password"
            }
            break
        default :
            break
        }
        return true
    }
}

