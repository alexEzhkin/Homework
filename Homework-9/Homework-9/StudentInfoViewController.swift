//
//  StudentInfoViewController.swift
//  Homework-9
//
//  Created by Alex on 11.04.22.
//

import UIKit

class StudentInfoViewController: UIViewController {
    
    @IBOutlet weak var nameOutputLabel: UILabel!
    @IBOutlet weak var surnameOutputLabel: UILabel!
    @IBOutlet weak var ageOutputLabel: UILabel!
    @IBOutlet weak var genderOutputLabel: UILabel!
    
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
