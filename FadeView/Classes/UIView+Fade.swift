//
//  UIView+Fade.swift
//  Pods
//
//  Created by DragonCherry on 5/12/17.
//
//

import UIKit

extension UIView {
    
    public func fadeOutFromSuperview(_ duration: TimeInterval = 0.25, completion: (() -> Void)? = nil) {
        if let _ = self.superview {
            UIView.animate(
                withDuration: duration,
                animations: {
                    self.alpha = 0
            },
                completion: { finished in
                    self.isHidden = true
                    self.removeFromSuperview()
                    completion?()
            })
        }
    }
    
    public func fadeInSubview(_ subview: UIView, duration: TimeInterval = 0.25, completion: (() -> Void)? = nil) {
        if subview.superview == nil {
            addSubview(subview)
            isHidden = false
            self.alpha = 0
            UIView.animate(
                withDuration: duration,
                animations: {
                    self.alpha = 1
            },
                completion: { finished in
                    completion?()
            })
        }
    }
}
