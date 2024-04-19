//
//  UIColor+Ext.swift
//  RandomColors
//
//  Created by Rohan on 4/18/24.
//

import UIKit

extension UIColor{
    
    static func randomColor() -> UIColor{
        
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1.0)
        return randomColor
    }
}
