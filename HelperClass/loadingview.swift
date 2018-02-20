//
//  loadingview.swift
//  SAl
//
//  Created by Abdelrahman Ahmed Shawky on 2/4/18.
//  Copyright © 2018 Abdelrahman Ahmed Shawky. All rights reserved.
//

import Foundation
import UIKit
public class LoadingOverlay{
    
    var overlayView = UIView()
    var activityIndicator = UIActivityIndicatorView()
    
    class var shared: LoadingOverlay {
        struct Static {
            static let instance: LoadingOverlay = LoadingOverlay()
        }
        return Static.instance
    }
    
    public func showOverlay(view: UIView) {
        
        overlayView.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
        overlayView.center = view.center
        overlayView.backgroundColor = UIColor(red: 40, green: 149, blue: 255, alpha: 1)
        overlayView.clipsToBounds = true
        overlayView.layer.cornerRadius = 10
        activityIndicator.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        activityIndicator.activityIndicatorViewStyle = .gray
        activityIndicator.center = CGPoint(x: overlayView.bounds.width/2 , y: overlayView.bounds.height/2)
        overlayView.addSubview(activityIndicator)
        view.addSubview(overlayView)
        
        activityIndicator.startAnimating()
    }
    
    public func hideOverlayView() {
        activityIndicator.stopAnimating()
        overlayView.removeFromSuperview()
    }
}
