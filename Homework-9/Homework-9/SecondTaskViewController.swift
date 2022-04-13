//
//  SecondTaskViewController.swift
//  Homework-9
//
//  Created by Alex on 10.04.22.
//

import UIKit

class SecondTaskViewController: UIViewController {

    @IBOutlet weak var circleContainerView: UIView!
    @IBOutlet weak var circleView: UIView!
    
    let step: CGFloat = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        circleView.layer.cornerRadius = circleView.frame.width / 2
        circleView.layer.masksToBounds = true
        
        addSwipeGestureRecognizerUp()
        addSwipeGestureRecognizerLeft()
        addSwipeGestureRecognizerDown()
        addSwipeGestureRecognizerRight()
        
    }
    
    private func addSwipeGestureRecognizerUp() {
        let swipeGestureUp = UISwipeGestureRecognizer(target: self,
                                                action: #selector(handleUpSwipe))
        swipeGestureUp.direction = .up
        circleContainerView.addGestureRecognizer(swipeGestureUp)
    }
    
    private func addSwipeGestureRecognizerLeft() {
        let swipeGestureLeft = UISwipeGestureRecognizer(target: self,
                                                action: #selector(handleLeftSwipe))
        swipeGestureLeft.direction = .left
        circleContainerView.addGestureRecognizer(swipeGestureLeft)
    }
    
    private func addSwipeGestureRecognizerDown() {
        let swipeGestureDown = UISwipeGestureRecognizer(target: self,
                                                action: #selector(handleDownSwipe))
        swipeGestureDown.direction = .down
        circleContainerView.addGestureRecognizer(swipeGestureDown)
    }
    
    private func addSwipeGestureRecognizerRight() {
        let swipeGestureRight = UISwipeGestureRecognizer(target: self,
                                                action: #selector(handleRightSwipe))
        swipeGestureRight.direction = .right
        circleContainerView.addGestureRecognizer(swipeGestureRight)
    }
    
    @objc private func handleUpSwipe(gesture: UISwipeGestureRecognizer) {
        if circleView.frame.minY + step >= 0 {
            circleView.frame.origin = CGPoint(x: circleView.frame.origin.x, y: circleView.frame.origin.y - step)
        }
    }
    
    @objc private func handleLeftSwipe(gesture: UISwipeGestureRecognizer) {
        if circleView.frame.minX - step >= 0 {
            circleView.frame.origin = CGPoint(x: circleView.frame.origin.x - step, y: circleView.frame.origin.y)
        }
    }
    
    @objc private func handleDownSwipe(gesture: UISwipeGestureRecognizer) {
        if circleView.frame.maxY + step <= circleContainerView.frame.height {
            circleView.frame.origin = CGPoint(x: circleView.frame.origin.x, y: circleView.frame.origin.y + step)
        }
    }
    
    @objc private func handleRightSwipe(gesture: UISwipeGestureRecognizer) {
        if circleView.frame.maxX + step <= circleContainerView.frame.width {
            circleView.frame.origin = CGPoint(x: circleView.frame.origin.x + step, y: circleView.frame.origin.y)
        }
    }
}
