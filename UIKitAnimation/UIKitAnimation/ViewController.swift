////
////  ViewController.swift
////  UIKitAnimation
////
////  Created by iStudents on 3/27/15.
////  Copyright (c) 2015 iStudents. All rights reserved.
////
//
import UIKit

class ViewController: UIViewController, UICollisionBehaviorDelegate {

    
    //1
    var square: UIView!
    var animator: UIDynamicAnimator!
    var gravity : UIGravityBehavior!
    var collision: UICollisionBehavior!
    
    var firstContact = false
    
    var snap: UISnapBehavior!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
     let barrier = UIView(frame: CGRect(x: 0, y: 300, width: 130, height: 20))

        square = UIView(frame: CGRect (x: 100, y: 100, width: 100, height: 100))
        square.backgroundColor = UIColor.grayColor()
        view.addSubview(square)

        animator = UIDynamicAnimator(referenceView: view)
        gravity = UIGravityBehavior(items: [square])
        animator.addBehavior(gravity)

        barrier.backgroundColor = UIColor.redColor()
        view.addSubview(barrier)

        collision = UICollisionBehavior(items: [square])
        collision.addBoundaryWithIdentifier("barrier", forPath: UIBezierPath(rect: barrier.frame))

        collision.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(collision)
        collision.collisionDelegate = self
        collision.action = {
    println("\(NSStringFromCGAffineTransform(self.square.transform)) \(NSStringFromCGPoint(self.square.center))")
}

        let itemBehaviour = UIDynamicItemBehavior(items: [square])
        itemBehaviour.elasticity = 0.6
        animator.addBehavior(itemBehaviour)

    }

    func collisionBehavior(behavior: UICollisionBehavior!, beganContactForItem item: UIDynamicItem!, withBoundaryIdentifier identifier: NSCopying!, atPoint p: CGPoint) {
        println("Boudary contract occured - \(identifier)")
        
        let collidngView = item as UIView
        collidngView.backgroundColor = UIColor.yellowColor()
        UIView.animateWithDuration(0.3){
            collidngView.backgroundColor = UIColor.grayColor()
        }
        
        
        if(!self.firstContact){
            self.firstContact = true
            
            let square = UIView(frame: CGRect(x: 30, y: 0, width: 100, height: 100))
            square.backgroundColor = UIColor.grayColor()
            self.view.addSubview(square)
            
            self.collision.addItem(square)
            self.gravity.addItem(square)
            
            let attach = UIAttachmentBehavior(item: collidngView, attachedToItem:square)
            self.animator.addBehavior(attach)
       }
    }
    
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        if(snap != nil){
            animator.removeBehavior(snap)
        }
        let touch = touches.anyObject() as UITouch
        snap = UISnapBehavior(item: square, snapToPoint: touch.locationInView(view))
        animator.addBehavior(snap)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}