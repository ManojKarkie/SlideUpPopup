//
//  DialogAnimator.swift
//  SlideUpPopup
//
//  Created by Manoj Karki on 7/20/17.
//  Copyright © 2017 Swittech. All rights reserved.
//

import UIKit

class DialogAnimator: NSObject, UIViewControllerAnimatedTransitioning {

    var duration = 0.8
    
    var presenting = true
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return duration
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        let redView = transitionContext.view(forKey: UITransitionContextViewKey.to)

        let containerView = transitionContext.containerView
        
        redView?.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        redView?.clipsToBounds = true

        containerView.addSubview(redView!)

        UIView.animate(withDuration: duration, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.0, options: [.curveEaseInOut], animations: {
            redView?.transform = CGAffineTransform.identity
        }) { _ in
            transitionContext.completeTransition(true)
        }

    }

}
