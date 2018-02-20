//
//  CustomTextFieldAnimationExtensions.swift
//
//

import UIKit

extension UITextField {
    func shake(count : Float? = nil,for duration : TimeInterval? = nil,withTranslation translation : Float? = nil) {
        
        // You can change these values, so that you won't have to write a long function
        let defaultRepeatCount = 4
        let defaultTotalDuration = 0.5
        let defaultTranslation = -5
        
        let animation : CABasicAnimation = CABasicAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        
        animation.repeatCount = count ?? Float(defaultRepeatCount)
        animation.duration = (duration ?? defaultTotalDuration)/TimeInterval(animation.repeatCount)
        animation.autoreverses = true
        animation.byValue = translation ?? defaultTranslation
        layer.add(animation, forKey: "shake")
        
    }
    
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    
    func setImage(image: String, width: Int, height: Int) {
        self.leftViewMode = .always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: width , height: height))
        let img = UIImage(named: image)
        imageView.image = img
        self.leftView = imageView
    }
    
    func setButton(target: Any, imageName: String, function: Selector) {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: imageName), for: .normal)
        button.imageEdgeInsets = UIEdgeInsetsMake(0, -16, 0, 0)
        button.frame = CGRect(x: CGFloat(self.frame.size.width - 25), y: CGFloat(5), width: CGFloat(10), height: CGFloat(25))
        button.addTarget(target, action: function, for: .touchUpInside)
        self.rightView = button
        self.rightViewMode = .always
    }
}

