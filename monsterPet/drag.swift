//
//  drag.swift
//  monsterPet
//
//  Created by Cex on 16/07/2016.
//  Copyright © 2016 newmediatechies. All rights reserved.
//

import Foundation
import UIKit

class DragIt: UIImageView {
    
    var orginPos: CGPoint!
    var dropTarget: UIView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        orginPos = self.center
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first {
            let pos = touch.locationInView(self.superview)
            self.center = CGPointMake(pos.x, pos.y)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        if let touch = touches.first, let target = dropTarget {
            let pos = touch.locationInView(self.superview)
            if CGRectContainsPoint(target.frame, pos) {
                NSNotificationCenter.defaultCenter().postNotification(NSNotification (name: "onTargetDrop", object: nil))
            }
        }
        self.center = orginPos
    }
    
    
}