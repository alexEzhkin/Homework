//
//  SecondViewController.swift
//  HomeWork-7
//
//  Created by Alex on 2.04.22.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var squareView: UIView!
    
    @IBOutlet weak var firstSquareFigure: UILabel!
    @IBOutlet weak var secondSquareFigure: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func showSquares(_ sender: Any) {
        squareView.isHidden = false
        
        firstSquareFigure.layer.position = CGPoint(x: CGFloat.random(in: 0...squareView.frame.size.width - firstSquareFigure.frame.width), y: CGFloat.random(in: 0...squareView.frame.size.height - firstSquareFigure.frame.height))
        secondSquareFigure.layer.position = CGPoint(x: CGFloat.random(in: 0...squareView.frame.size.width - secondSquareFigure.frame.width), y: CGFloat.random(in: 0...squareView.frame.size.height - secondSquareFigure.frame.height))
        
        while firstSquareFigure.frame.intersects(secondSquareFigure.frame) == true {
            secondSquareFigure.layer.position = CGPoint(x: CGFloat.random(in: 0...squareView.frame.size.width - secondSquareFigure.frame.width), y: CGFloat.random(in: 0...squareView.frame.size.height - secondSquareFigure.frame.height))
        }
    }
    
    @IBAction func clearView(_ sender: Any) {
        squareView.isHidden = true
    }
}
