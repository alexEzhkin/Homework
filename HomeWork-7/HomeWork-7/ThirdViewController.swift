//
//  ThirdViewController.swift
//  HomeWork-7
//
//  Created by Alex on 3.04.22.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var circleLable: UIView!
    
    @IBOutlet weak var controlView: UIView!
    @IBOutlet weak var circleContainerView: UIView!
    
    let step: CGFloat = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        circleLable.layer.cornerRadius = circleLable.frame.width / 2
        circleLable.layer.masksToBounds = true
    }
    
    @IBAction func upButton(_ sender: Any) {
        if circleLable.frame.minY + step >= 0 {
            circleLable.frame.origin = CGPoint(x: circleLable.frame.origin.x, y: circleLable.frame.origin.y - step)
        }
    }
    
    @IBAction func leftButton(_ sender: Any) {
        if circleLable.frame.minX - step >= 0 {
            circleLable.frame.origin = CGPoint(x: circleLable.frame.origin.x - step, y: circleLable.frame.origin.y)
        }
    }
    
    @IBAction func rightButton(_ sender: Any) {
        if circleLable.frame.midX + circleLable.frame.width <= circleContainerView.frame.width {
            circleLable.frame.origin = CGPoint(x: circleLable.frame.origin.x + step, y: circleLable.frame.origin.y)
        }
    }
    
    @IBAction func downButton(_ sender: Any) {
        if circleLable.frame.maxY + step <= circleContainerView.frame.height {
        circleLable.frame.origin = CGPoint(x: circleLable.frame.origin.x, y: circleLable.frame.origin.y + step)
        }
    }
}
