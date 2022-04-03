//
//  ThirdViewController.swift
//  HomeWork-7
//
//  Created by Alex on 3.04.22.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var circleLable: UILabel!
    
    @IBOutlet weak var controlView: UIView!
    @IBOutlet weak var circleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        circleLable.layer.cornerRadius = circleLable.frame.width / 2
        circleLable.layer.masksToBounds = true
    }
    
    @IBAction func upButton(_ sender: Any) {
        if circleLable.frame.origin.y <= 0 {
            circleView.frame.origin = self.circleView.frame.origin
        }
        else {
            circleLable.frame.origin = CGPoint(x: circleLable.frame.origin.x, y: circleLable.frame.origin.y - 10)
        }
    }
    
    @IBAction func leftButton(_ sender: Any) {
        if circleLable.frame.origin.x <= 0 {
            circleView.frame.origin = self.circleView.frame.origin
        } else {
            circleLable.frame.origin = CGPoint(x: circleLable.frame.origin.x - 10, y: circleLable.frame.origin.y)
        }
    }
    
    @IBAction func rightButton(_ sender: Any) {
        if circleLable.frame.midX + circleLable.frame.width >= circleView.frame.width {
            circleView.frame.origin = self.circleView.frame.origin
        }
        else {
            circleLable.frame.origin = CGPoint(x: circleLable.frame.origin.x + 10, y: circleLable.frame.origin.y)
        }
    }
    
    @IBAction func downButton(_ sender: Any) {
        if circleLable.frame.intersects(controlView.frame) == false {
        circleLable.frame.origin = CGPoint(x: circleLable.frame.origin.x, y: circleLable.frame.origin.y + 10)
        } else {
            circleLable.frame.origin = self.circleLable.frame.origin
        }
    }
}
