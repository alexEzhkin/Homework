//
//  FirstTaskViewController.swift
//  Homework-9
//
//  Created by Alex on 9.04.22.
//

import UIKit

class FirstTaskViewController: UIViewController {

    @IBOutlet weak var circleContainerView: UIView!
    private var circleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.circleView = UILabel(frame: CGRect(x: 0, y: 0, width: 70, height: 70))
        circleView.layer.cornerRadius = circleView.frame.width/2
        circleView.layer.masksToBounds = true
        circleView.backgroundColor = .black
        
        circleContainerView.addSubview(circleView)
        
        addTapGesture()
    }
    
    private func addTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self,
                                                action: #selector(handleTap))
        circleContainerView.addGestureRecognizer(tapGesture)
    }
    
    @objc private func handleTap(gesture: UITapGestureRecognizer) {

        let tapLocation = gesture.location(in: circleContainerView)
        let xCoordinatesOfCircle = circleView.frame.minX...circleView.frame.maxX
        let yCoordinatesOfCircle = circleView.frame.minY...circleView.frame.maxY
        if xCoordinatesOfCircle.contains(tapLocation.x) && yCoordinatesOfCircle.contains(tapLocation.y) && circleView.isHidden {
            circleView.center = tapLocation
            circleView.isHidden = false
        } else if xCoordinatesOfCircle.contains(tapLocation.x) && yCoordinatesOfCircle.contains(tapLocation.y) {
            circleView.isHidden = true
        } else {
            circleView.center = tapLocation
            circleView.isHidden = false
        }
    }
}
