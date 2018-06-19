//
//  MySegue.swift
//  AnimationIS
//
//  Created by Darkhan on 26.03.18.
//  Copyright © 2018 SDU. All rights reserved.
//

import UIKit

class MySegue: UIStoryboardSegue {
    override func perform() {
        let source = self.source
        let destination = self.destination
        let sourceView = source.view
        let destinationView = destination.view
        let container = sourceView?.superview
        destinationView?.center = (sourceView?.center)!
        destinationView?.transform = CGAffineTransform(translationX: -(destinationView?.bounds.width)!, y: -(destinationView?.bounds.height)!)
        
        UIView.animate(withDuration: 0.5, delay: 0, options: UIViewAnimationOptions.curveLinear, animations: {
            container?.addSubview(destinationView!)
            destinationView?.transform = CGAffineTransform.identity
            sourceView?.transform = CGAffineTransform(scaleX: 0.01, y: 0.01)
        }) { (success) in
            self.source.present(destination, animated: false, completion: nil)
        }
        
    }
}
