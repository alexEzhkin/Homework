//
//  FirstTaskViewController.swift
//  HomeWork-7
//
//  Created by Alex on 1.04.22.
//

import UIKit

extension UIColor {
    static var random: UIColor {
        return UIColor(red: .random(in: 0...1),
                     green: .random(in: 0...1),
                     blue: .random(in: 0...1),
                     alpha: 1)
    }
}

class FirstTaskViewController: UIViewController {
    
    @IBOutlet weak var circleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func handleTap(_ sender: Any) {
        
        let circle = UILabel(frame: CGRect(x: 0, y: 0, width: 70, height: 70))
        
        circle.center = CGPoint(x: CGFloat.random(in: 0...circleView.frame.size.width), y: CGFloat.random(in: 0...circleView.frame.size.height))
        circle.layer.cornerRadius = circle.frame.width/2
        circle.layer.masksToBounds = true
        circle.backgroundColor = .black
        
        if self.circleView.subviews.isEmpty {
            self.circleView.addSubview(circle)
        }
        else {
            self.circleView.subviews.first?.center = CGPoint(x: CGFloat.random(in: 0...circleView.frame.size.width), y: CGFloat.random(in: 0...circleView.frame.size.height))
            self.circleView.subviews.first?.backgroundColor = .random
        }
    }
}
