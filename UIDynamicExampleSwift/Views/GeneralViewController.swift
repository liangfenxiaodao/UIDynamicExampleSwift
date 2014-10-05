//
//  GravityView.swift
//  JLProgressBar-swift
//
//  Created by Jacky Li on 5/10/14.
//  Copyright (c) 2014 Jacky Li. All rights reserved.
//

import Foundation
import UIKit

public class GravityViewController : UIViewController {
    
    var viewName: ViewNameEnum?
    
    required public init(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
    
    override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!)
    {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    
    init(viewName: ViewNameEnum, title: String){
        super.init()
        self.viewName = viewName
        self.navigationItem.title = title
    }
    
    override public func loadView(){
        super.loadView()
        switch self.viewName!{
            case .Gravity:
                self.view = GravityView(frame: CGRectZero)
            case .Collision:
                self.view = CollisionView(frame: CGRectZero)
            case .Attachment:
                self.view = AttachmentView(frame: CGRectZero)
        }
    }
}