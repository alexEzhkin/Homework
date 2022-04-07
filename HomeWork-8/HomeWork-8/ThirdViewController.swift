//
//  ThirdViewController.swift
//  HomeWork-8
//
//  Created by Alex on 5.04.22.
//

import UIKit

protocol ThirdViewControllerDelegate {
    func passTextFromTextFIeld(text: String)
}

class ThirdViewController: UIViewController, FourthViewControllerDelegate {
    
    func passTextFromTextFIeld(text: String) {
        textFromSecondVC = text
        print("ThirdVC \(text)")
    }

    var textFromSecondVC = String()
    var delegate: ThirdViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func navigateToFourthViewController(_ sender: Any) {
        guard let fourthViewContoller = UIStoryboard(name: "Main", bundle: nil)
                .instantiateViewController(withIdentifier: "fourthVC") as? FourthViewController else { return }
        
        fourthViewContoller.modalTransitionStyle = .crossDissolve
        fourthViewContoller.modalPresentationStyle = .fullScreen
        fourthViewContoller.delegate = self
        
        present(fourthViewContoller,
                animated: true,
                completion: nil)
        
        fourthViewContoller.textFromThirdVC = textFromSecondVC
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true) {
            self.delegate?.passTextFromTextFIeld(text: self.textFromSecondVC)
        }
    }
    
    
}
