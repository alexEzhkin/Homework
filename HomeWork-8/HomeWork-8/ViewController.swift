//
//  ViewController.swift
//  HomeWork-8
//
//  Created by Alex on 5.04.22.
//

import UIKit

class ViewController: UIViewController, SecondViewControllerDelegate {
    
    func passTextFromTextFIeld(text: String) {
        inputTextField.text = text
    }

    @IBOutlet weak var inputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func navigateToSecondViewController(_ sender: Any) {
        guard let secondViewContoller = UIStoryboard(name: "Main", bundle: nil)
                .instantiateViewController(withIdentifier: "secondVC") as? SecondViewController else { return }
        
        secondViewContoller.modalTransitionStyle = .crossDissolve
        secondViewContoller.modalPresentationStyle = .fullScreen
        secondViewContoller.delegate = self
        
        present(secondViewContoller,
                animated: true,
                completion: nil)
        
        secondViewContoller.textFromVC = inputTextField.text ?? ""
    }
}

