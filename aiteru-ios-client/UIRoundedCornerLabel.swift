//
//  UIRoundedCornerLabel.swift
//  aiteru-ios-client
//
//  Created by Kosuke Matsuura on 11/23/16.
//  Copyright © 2016 Kosuke Matsuura. All rights reserved.
//

import Foundation
import UIKit

let defaultPadding: CGFloat = 8
let defaultBorderColor: CGColor = UIColor.white.cgColor
let defaultBorderWidth: CGFloat = 4
let defaultBorderRadius: CGFloat = 4

class UIRoundedCornerLabel: UILabel {

    let padding: CGFloat
    let borderColor: CGColor
    let borderWidth: CGFloat
    let borderRadius: CGFloat

    init(frame: CGRect,
         padding: CGFloat,
         borderColor: CGColor,
         borderWidth: CGFloat,
         borderRadius: CGFloat) {
        self.padding = padding
        self.borderColor = borderColor
        self.borderWidth = borderWidth
        self.borderRadius = borderRadius
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
        self.padding = defaultPadding
        self.borderColor = defaultBorderColor
        self.borderWidth = defaultBorderWidth
        self.borderRadius = defaultBorderRadius
        super.init(coder: aDecoder)
    }

    override func drawText(in rect: CGRect) {
        let inset: UIEdgeInsets = UIEdgeInsets(top: self.padding,
                                               left: self.padding,
                                               bottom: self.padding,
                                               right: self.padding)
        self.layer.borderColor = self.borderColor
        self.layer.borderWidth = self.borderWidth
        self.layer.cornerRadius = self.borderRadius

        super.drawText(in: UIEdgeInsetsInsetRect(rect, inset))
    }
}
