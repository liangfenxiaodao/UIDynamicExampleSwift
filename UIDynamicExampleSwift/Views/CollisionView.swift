
import Foundation
import UIKit

public class CollisionView : BaseViewWithBall{
   
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
        
        var collisionBehavior: UICollisionBehavior = UICollisionBehavior(items: [ballView])
        collisionBehavior.translatesReferenceBoundsIntoBoundary = true
        animator!.addBehavior(collisionBehavior)
        
        var itemBehavior: UIDynamicItemBehavior = UIDynamicItemBehavior(items: [ballView])
        itemBehavior.elasticity = 0.6
        animator!.addBehavior(itemBehavior)
    }

}
