//
//  StatusLabelDesign.swift
//  aiteru-ios-client
//
//  Created by Kosuke Matsuura on 11/23/16.
//  Copyright © 2016 Kosuke Matsuura. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class StatusLabelDesign: UILabel {
    
    @IBInspectable var cornerRadius: CGFloat = 0.0
    
    @IBInspectable var borderColor: UIColor = UIColor.clear
    @IBInspectable var borderWidth: CGFloat = 0.0
    
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = (cornerRadius > 0)
        
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
        
        super.draw(rect)
    }
}
