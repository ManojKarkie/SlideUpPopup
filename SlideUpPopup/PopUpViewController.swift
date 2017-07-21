//
//  PopUpViewController.swift
//  SlideUpPopup
//
//  Created by Manoj Karki on 7/20/17.
//  Copyright © 2017 Swittech. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {
    
    let dialogAnimator = DialogAnimator()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var ShowDialog: UIButton!
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func show( _ sender: UIButton) {
        let dialog = self.storyboard?.instantiateViewController(withIdentifier: "DialogViewController")
        dialog?.transitioningDelegate = self
        dialog?.modalPresentationStyle = .custom
        self.present(dialog!, animated: true, completion: nil)
    }
}

extension PopUpViewController: UIViewControllerTransitioningDelegate {
   
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return dialogAnimator
    }
    
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        return DialogPresenter(presentedViewController: presented, presenting: presenting)
    }

   
    
}
