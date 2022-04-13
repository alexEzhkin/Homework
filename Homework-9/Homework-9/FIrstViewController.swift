//
//  FirstViewController.swift
//  Homework-9
//
//  Created by Alex on 10.04.22.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func handleFindTextButton (_ sender: Any) {
        guard let secondViewController = UIStoryboard(name: "Main", bundle: nil)
                .instantiateViewController(withIdentifier: "secondVC") as? SecondViewController else { return }
        
        navigationController?.pushViewController(secondViewController, animated: true)
        secondViewController.textFromFirstVC = inputTextField.text ?? ""
    }
}
