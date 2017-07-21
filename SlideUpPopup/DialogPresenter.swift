//
//  DialogPresenter.swift
//  SlideUpPopup
//
//  Created by Manoj Karki on 7/20/17.
//  Copyright © 2017 Swittech. All rights reserved.
//

import UIKit

class DialogPresenter: UIPresentationController {
    
  override var frameOfPresentedViewInContainerView: CGRect {
        get {
            return CGRect(x: (containerView?.frame.midX)! - 150.0 , y: (containerView?.frame.midY)! - 150.0 , width: 300.0, height: 300.0)
        }
    }

    override func containerViewDidLayoutSubviews() {
        presentedView?.frame = frameOfPresentedViewInContainerView
    }

}
