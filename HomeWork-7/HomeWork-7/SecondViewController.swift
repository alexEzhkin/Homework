//
//  SecondViewController.swift
//  HomeWork-7
//
//  Created by Alex on 2.04.22.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var squaresContainerView: UIView!
    
    @IBOutlet weak var firstSquareFigure: UIView!
    @IBOutlet weak var secondSquareFigure: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func showSquares(_ sender: Any) {
        squaresContainerView.isHidden = false
        
        firstSquareFigure.frame.origin = CGPoint(x: CGFloat.random(in: 0...squaresContainerView.frame.width - firstSquareFigure.frame.width * 2), y: CGFloat.random(in: 0...squaresContainerView.frame.height - firstSquareFigure.frame.height * 2))
        secondSquareFigure.frame.origin = CGPoint(x: CGFloat.random(in: 0...squaresContainerView.frame.width - secondSquareFigure.frame.width * 2), y: CGFloat.random(in: 0...squaresContainerView.frame.height - secondSquareFigure.frame.height * 2))
        
        while firstSquareFigure.frame.intersects(secondSquareFigure.frame) {
            secondSquareFigure.frame.origin = CGPoint(x: CGFloat.random(in: 0...squaresContainerView.frame.width - secondSquareFigure.frame.width * 2), y: CGFloat.random(in: 0...squaresContainerView.frame.height - secondSquareFigure.frame.height * 2))
        }
    }
    
    @IBAction func clearView(_ sender: Any) {
        squaresContainerView.isHidden = true
    }
}
