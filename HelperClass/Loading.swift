//
//  Loading.swift
//  SAl
//
//  Created by Abdelrahman Ahmed Shawky on 2/4/18.
//  Copyright © 2018 Abdelrahman Ahmed Shawky. All rights reserved.
//

import UIKit
import NVActivityIndicatorView
class Loading: UIViewController,NVActivityIndicatorViewable {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //LoadingOverlay.shared.showOverlay(view: self.view)
        
    }
    
    func loading (){
        let size = CGSize(width: 30, height: 30)
        startAnimating(size, message: "", type: NVActivityIndicatorType(rawValue:5)!)
    }
    

}
