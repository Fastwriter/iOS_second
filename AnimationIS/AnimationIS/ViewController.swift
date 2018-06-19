//
//  ViewController.swift
//  AnimationIS
//
//  Created by Darkhan on 26.03.18.
//  Copyright © 2018 SDU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blurredView: UIVisualEffectView!
    
    @IBOutlet var popUpView2: UIView!
    @IBOutlet var popUpView: UIView!
    var isHidden = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        popUpView.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
    }

    @IBAction func plusPressed(_ sender: UIBarButtonItem) {
        if isHidden{
        UIView.animate(withDuration: 0.3) {
            self.blurredView.alpha = 1
            self.popUpView.transform = CGAffineTransform.identity
        }
            isHidden = false
        }else{
            UIView.animate(withDuration: 0.3) {
                self.blurredView.alpha = 0
                self.popUpView.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            }
            isHidden = true
        }
        
    }
    
    @IBAction func backPressed() {
        UIView.transition(from: popUpView2, to: popUpView, duration: 0.3, options: UIViewAnimationOptions.transitionFlipFromTop, completion: nil)
    }
    
    @IBAction func noPressed(_ sender: UIButton) {
        popUpView2.alpha = 1
        UIView.transition(from: popUpView, to: popUpView2, duration: 0.3, options: UIViewAnimationOptions.transitionFlipFromTop, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

