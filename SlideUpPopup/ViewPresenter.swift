//
//  ViewPresenter.swift
//  SlideUpPopup
//
//  Created by Manoj Karki on 7/20/17.
//  Copyright © 2017 Swittech. All rights reserved.
//

import UIKit

class ViewPresenter: UIPresentationController {

    override var frameOfPresentedViewInContainerView: CGRect {
        get {
           return CGRect(x: 0, y: (containerView?.frame.size.height)! - 200, width: (containerView?.frame.size.width)!, height: 200)
        }
    }
    
    override func containerViewDidLayoutSubviews() {
        presentedView?.frame = frameOfPresentedViewInContainerView
    }

}
