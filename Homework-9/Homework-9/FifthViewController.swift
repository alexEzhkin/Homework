//
//  FifthViewController.swift
//  Homework-9
//
//  Created by Alex on 10.04.22.
//

import UIKit

class FifthViewController: UIViewController {

    @IBOutlet weak var outputTextField: UILabel!
    var textFromFourthVC = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        outputTextField.text = textFromFourthVC
    }
}
