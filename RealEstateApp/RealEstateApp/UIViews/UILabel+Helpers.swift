//
//  UILabel+Helpers.swift
//  RealEstateApp
//
//  Created by David López on 4/4/25.
//

import UIKit

class PaddedLabel: UILabel {
    
    private var padding = UIEdgeInsets(top: 4, left: 8, bottom: 4, right: 8)
    
    override func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: padding))
    }
    
    override var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize
        return CGSize(width: size.width + padding.left + padding.right,
                      height: size.height + padding.top + padding.bottom)
    }
}
