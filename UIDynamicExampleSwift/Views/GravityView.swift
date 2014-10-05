//
//  GravityView.swift
//  JLProgressBar-swift
//
//  Created by Jacky Li on 5/10/14.
//  Copyright (c) 2014 Jacky Li. All rights reserved.
//

import Foundation
import UIKit
public class GravityView : BaseViewWithBall {

    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addGravity()
    }
    
    func addGravity(){
        var gravityBehaviour: UIGravityBehavior = UIGravityBehavior(items: [ballView])
        animator!.addBehavior(gravityBehaviour)
    }
}
