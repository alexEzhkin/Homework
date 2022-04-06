//
//  SecondViewController.swift
//  HomeWork-8
//
//  Created by Alex on 5.04.22.
//

import UIKit

protocol SecondViewControllerDelegate {
    func passTextFromTextFIeld(text: String)
}

class SecondViewController: UIViewController, ThirdViewControllerDelegate {
    
    func passTextFromTextFIeld(text: String) {
        textFromVC = text
    }
    
    var textFromVC = String()
    var delegate: SecondViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func navigateToThirdViewController(_ sender: Any) {
        guard let thirdViewContoller = UIStoryboard(name: "Main", bundle: nil)
                .instantiateViewController(withIdentifier: "thirdVC") as? ThirdViewController else { return }
        
        thirdViewContoller.modalTransitionStyle = .crossDissolve
        thirdViewContoller.modalPresentationStyle = .fullScreen
        thirdViewContoller.delegate = self
        
        present(thirdViewContoller,
                animated: true,
                completion: nil)
        
        thirdViewContoller.textFromSecondVC = textFromVC
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true) {
            self.delegate?.passTextFromTextFIeld(text: self.textFromVC)
        }
    }
}
