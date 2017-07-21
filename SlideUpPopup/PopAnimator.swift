//
//  PopAnimator.swift
//  SlideUpPopup
//
//  Created by Manoj Karki on 7/20/17.
//  Copyright © 2017 Swittech. All rights reserved.
//

import UIKit

class PopAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    
    var duration = 0.6
    
    var initialFrame = CGRect.zero

    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {

        let redView = transitionContext.view(forKey: UITransitionContextViewKey.to)
        
        
        let containerView = transitionContext.containerView
        
        

        
        //let finalFrame = redView?.frame
        
        //let transform = CGAffineTransform(scaleX: initialFrame.size.width / finalFrame!.size.width, y: initialFrame.size.height / finalFrame!.size.height)
        
        redView?.transform = CGAffineTransform(translationX: 0 , y: 200)
        redView?.clipsToBounds = true
        containerView.addSubview(redView!)
        
        //redView?.center = CGPoint(x: initialFrame.midX, y: initialFrame.maxY)
        
        //redView!.alpha = 0.0
        
//        UIView.animate(withDuration: duration, animations: {
//            redView?.transform = CGAffineTransform.identity
//        }) { (completed) in
//              transitionContext.completeTransition(true)
//        }
        UIView.animate(withDuration: duration, delay: 0.0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.0, options: [], animations: {
            redView?.transform = CGAffineTransform.identity
        }) { _ in
            transitionContext.completeTransition(true)
        }
        
        
    }
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return duration
    }
}
