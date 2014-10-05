

import Foundation
import UIKit

public class AttachmentView : BaseViewWithBall{
    
    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addCollision()
    }
    
    func addCollision(){
        var gravityBehaviour: UIGravityBehavior = UIGravityBehavior(items: [ballView])
        animator!.addBehavior(gravityBehaviour)
        
        var attachmentBehavior: UIAttachmentBehavior = UIAttachmentBehavior(item: ballView, attachedToAnchor: CGPointMake(100, 0))
        attachmentBehavior.length = 300
        attachmentBehavior.damping = 0.1
        attachmentBehavior.frequency = 5
        animator!.addBehavior(attachmentBehavior)
    }
    
}