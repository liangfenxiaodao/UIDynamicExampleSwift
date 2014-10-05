
import Foundation
import UIKit

public class BaseViewWithBall : UIView{
    let ballView: BallView = BallView()
    let animator: UIDynamicAnimator?
    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.animator = UIDynamicAnimator(referenceView: self)
        self.buildBall()
    }
    
    func buildBall(){
        ballView.center = CGPointMake(100, 100)
        self.addSubview(ballView)
    }
}