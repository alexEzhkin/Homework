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
    
    @IBOutlet weak var circleContainerView: UIView!
    
    private var circleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.circleView = UIView(frame: CGRect(x: 0, y: 0, width: 70, height: 70))
        circleView.center = CGPoint(x: CGFloat.random(in: 0...circleView.frame.size.width), y: CGFloat.random(in: 0...circleView.frame.size.height))
        circleView.layer.cornerRadius = circleView.frame.width/2
        circleView.layer.masksToBounds = true
        circleView.backgroundColor = .black
        
        circleContainerView.addSubview(circleView)
        self.circleView.isHidden = true
        
    }
    
    @IBAction func handleTap(_ sender: Any) {
        
        self.circleView.isHidden = false
        
        self.circleView.frame.origin = CGPoint(x: CGFloat.random(in: 0...circleContainerView.frame.width - circleView.frame.width * 2), y: CGFloat.random(in: 0...circleContainerView.frame.height - circleView.frame.height * 2))
        self.circleView.backgroundColor = .random
        }
}
