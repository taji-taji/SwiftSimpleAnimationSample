//
//  BallView.swift
//  SwiftSimpleAnimationSample
//
//  Created by tajika on 2016/01/22.
//  Copyright © 2016年 Tajika. All rights reserved.
//

import UIKit

@IBDesignable
class BallView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        let radius = self.frame.size.width / 2
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
}