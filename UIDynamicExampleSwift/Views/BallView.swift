//
//  BallView.swift
//  JLProgressBar-swift
//
//  Created by Jacky Li on 5/10/14.
//  Copyright (c) 2014 Jacky Li. All rights reserved.
//

import Foundation
import UIKit

public class BallView : UIView {
    override init(){
        super.init(frame: CGRectMake(0, 0, 40, 40))
        self.backgroundColor = UIColor.lightGrayColor()
        self.layer.cornerRadius = 20
        self.layer.borderColor = UIColor.grayColor().CGColor
        self.layer.borderWidth = 2
    }
    
    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}