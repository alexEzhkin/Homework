//
//  ThirdTaskViewController.swift
//  Homework-9
//
//  Created by Alex on 10.04.22.
//

import UIKit

class ThirdTaskViewController: UIViewController {

    @IBOutlet weak var circleContainerView: UIView!
    @IBOutlet weak var circleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        circleView.layer.cornerRadius = circleView.frame.width/2
        circleView.layer.masksToBounds = true
        
        addPanGesture()
    }
    
    private func addPanGesture() {
        let panGesture = UIPanGestureRecognizer(target: self,
                                                action: #selector(handlePan))
        circleView.addGestureRecognizer(panGesture)
    }
    
    @objc private func handlePan(gesture: UIPanGestureRecognizer) {
        let newCenterPoint: CGPoint = gesture.location(in: circleContainerView)
        let xPosition = newCenterPoint.x - circleView.center.x
        let yPosition = newCenterPoint.y - circleView.center.y
        
        let topLefPosition = CGPoint(x: circleView.frame.minX + xPosition, y: circleView.frame.minY + yPosition)
        let bottomRightPosition = CGPoint(x: circleView.frame.maxX + xPosition, y: circleView.frame.maxY + yPosition)
        if let containerView = circleView.superview, containerView.bounds.contains(topLefPosition), containerView.bounds.contains(bottomRightPosition) {
            circleView.center = CGPoint(x: circleView.center.x + xPosition, y: circleView.center.y + yPosition)
        }
    }
}
