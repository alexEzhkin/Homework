//
//  FourthViewController.swift
//  HomeWork-7
//
//  Created by Alex on 3.04.22.
//

import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var secondNameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var classNumberTextField: UITextField!
    
    var studentInformation: [(firstName: String, secondName: String, surname: String, age: String, classNumber: String)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func handleAddStudentButton(_ sender: Any) {
        
        if let firstNameText = firstNameTextField.text,
           let secondNameText = secondNameTextField.text, !secondNameText.isEmpty,
           let surnameText = surnameTextField.text, !surnameText.isEmpty,
           let ageText = ageTextField.text, !ageText.isEmpty,
           let classNumberText = classNumberTextField.text, !classNumberText.isEmpty {
            studentInformation.append((firstName: firstNameText, secondName: secondNameText, surname: surnameText, age: ageText, classNumber: classNumberText))
        } else {
            alertAction()
        }
    }
    
    @IBAction func handlePrintStudentsButton(_ sender: Any) {
        for student in studentInformation {
            print("First name: \(student.firstName) | Second Name: \(student.secondName) | Surname: \(student.surname) | Age: \(student.age) | Class Number: \(student.classNumber)")
        }
    }
    
    func alertAction() {
        let alert = UIAlertController(title: "Alert", message: "Please fill in all information about student", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler: { action in })
        alert.addAction(okButton)
        DispatchQueue.main.async(execute: {
            self.present(alert, animated: true)
        })
    }
}
