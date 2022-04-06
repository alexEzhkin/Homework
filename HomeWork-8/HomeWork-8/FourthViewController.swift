//
//  FourthViewController.swift
//  HomeWork-8
//
//  Created by Alex on 5.04.22.
//

import UIKit

protocol FourthViewControllerDelegate {
    func passTextFromTextFIeld(text: String)
}

class FourthViewController: UIViewController, FifthViewControllerDelegate {
    
    func passTextFromTextFIeld(text: String) {
        textFromThirdVC = text
        print("FourthVC \(text)")
    }

    var textFromThirdVC = String()
    var delegate: FourthViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func navigateToFifthViewController(_ sender: Any) {
        guard let fifthViewContoller = UIStoryboard(name: "Main", bundle: nil)
                .instantiateViewController(withIdentifier: "fifthVC") as? FifthViewController else { return }
        
        fifthViewContoller.modalTransitionStyle = .crossDissolve
        fifthViewContoller.modalPresentationStyle = .fullScreen
        fifthViewContoller.delegate = self
        
        present(fifthViewContoller,
                animated: true,
                completion: nil)
        
        fifthViewContoller.finalTextLabel.text = textFromThirdVC
    }

    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true) {
            self.delegate?.passTextFromTextFIeld(text: self.textFromThirdVC)
        }
    }
}
