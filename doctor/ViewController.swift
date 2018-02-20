//
//  ViewController.swift
//  doctor
//
//  Created by andrew on 2/12/18.
//  Copyright © 2018 andrew. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
class ViewController: UIViewController {

    var checkinternet = internetCheck()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        if checkinternet.isInternet() {
            Api.getdataSingup { (gender, languge, citys, states, categorys) in
                if let genders = gender{
                    print(genders[0].name ?? "")
                }
            }
        }else{
            
            dismiss(animated: true, completion: nil)
        }
}

}
