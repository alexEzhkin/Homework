//
//  SecondViewController.swift
//  HomeWork-8.1
//
//  Created by Alex on 6.04.22.
//

import UIKit

protocol SecondViewControllerDelegate {
    func passTextFromTextFIeld(nameText: String, surnameText: String, ageText: String, genderText: String)
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nameOutputLabel: UILabel!
    @IBOutlet weak var surnameOutputLabel: UILabel!
    @IBOutlet weak var ageOutputLabel: UILabel!
    @IBOutlet weak var genderOutputLabel: UILabel!
    
    var delegate: SecondViewControllerDelegate?
    var student: Student?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let student = student {
            nameOutputLabel.text = student.name
            surnameOutputLabel.text = student.surname
            ageOutputLabel.text = student.age
            genderOutputLabel.text = student.gender
        }
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true) {
            self.delegate?.passTextFromTextFIeld(nameText: self.nameOutputLabel.text ?? "", surnameText: self.surnameOutputLabel.text ?? "", ageText: self.ageOutputLabel.text ?? "", genderText: self.genderOutputLabel.text ?? "")
        }
    }
}

class Student {
    let name: String
    let surname: String
    let age: String
    let gender: String
    
    init(name: String, surname: String, age: String, gender: String) {
        self.name = name
        self.surname = surname
        self.age = age
        self.gender = gender
    }
}
