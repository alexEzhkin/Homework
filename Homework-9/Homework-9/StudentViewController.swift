//
//  StudentViewController.swift
//  Homework-9
//
//  Created by Alex on 11.04.22.
//

import UIKit

class StudentViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var genderTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func handlePushButton(_ sender: Any) {
        guard let studentInfoViewController = UIStoryboard(name: "Main", bundle: nil)
                .instantiateViewController(withIdentifier: "studentInfoVC") as? StudentInfoViewController else { return }
        
        navigationController?.pushViewController(studentInfoViewController, animated: true)
        studentInfoViewController.student = Student(name: nameTextField.text ?? "", surname: surnameTextField.text ?? "", age: ageTextField.text ?? "", gender: genderTextField.text ?? "")
    }
}
