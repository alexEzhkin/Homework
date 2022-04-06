//
//  ViewController.swift
//  HomeWork-8.1
//
//  Created by Alex on 6.04.22.
//

import UIKit

class ViewController: UIViewController, SecondViewControllerDelegate {
    
    func passTextFromTextFIeld(nameText: String, surnameText: String, ageText: String, genderText: String) {
        nameTextField.text = nameText
        surnameTextField.text = surnameText
        ageTextField.text = ageText
        genderTextField.text = genderText
    }

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var genderTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func pushInformationToSecondVC(_ sender: Any) {
        
        guard let secondViewContoller = UIStoryboard(name: "Main", bundle: nil)
                .instantiateViewController(withIdentifier: "secondVC") as? SecondViewController else { return }
        
        secondViewContoller.modalTransitionStyle = .crossDissolve
        secondViewContoller.modalPresentationStyle = .fullScreen
        secondViewContoller.delegate = self
        
        secondViewContoller.student = Student(name: nameTextField.text ?? "", surname: surnameTextField.text ?? "", age: ageTextField.text ?? "", gender: genderTextField.text ?? "")
        
        present(secondViewContoller,
                animated: true,
                completion: nil)
    }
}

