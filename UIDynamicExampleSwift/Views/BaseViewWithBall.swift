
import Foundation
import UIKit

public class BaseViewWithBall : UIView{
    let ballView: BallView = BallView()
    let animator: UIDynamicAnimator?
    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(){
        super.init()
        self.animator = UIDynamicAnimator(referenceView: self)
        self.buildBall()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    func buildBall(){
        ballView.center = CGPointMake(100, 100)
        self.addSubview(ballView)
    }
}