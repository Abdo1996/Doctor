//
//  ViewController.swift
//  Sample
//
//  Created by fingent on 11/02/16.
//  Copyright © 2016 fingent. All rights reserved.
//

import UIKit

import Toast_Swift


class internetCheck: UIappViewController {
    
	var reachability:Reachability?
	override func viewDidLoad() {
		super.viewDidLoad()
		manager.delegate = self
        
        if isInternet() {
            //call API from here.
        }
        else{
            DispatchQueue.main.async {
                print("Network Unavailable")
                //Show Alert
            }
        }
	}
    override func reachabilityStatusChangeHandler(_ reachability: Reachability) {
        print(reachability.isReachable())
    }
    func isInternet() -> Bool {
        
        if(AppManager.sharedInstance.isReachability)
        {
            self.view.makeToast("network available", duration: 3.0, position: .bottom)
            return true
        } else {
            self.view.makeToast("Network Unavailable", duration: 3.0, position: .bottom)
            return false
        }
    }
}

