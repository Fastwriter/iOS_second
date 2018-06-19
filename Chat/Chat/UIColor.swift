//
//  UIColor.swift
//  Chat
//
//  Created by Demeuov Daulet on 06.03.2018.
//  Copyright © 2018 Demeuov Daulet. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}
