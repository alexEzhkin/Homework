//
//  PreviousHomeworkViewController.swift
//  Homework-9
//
//  Created by Alex on 10.04.22.
//

import UIKit

class PreviousHomeworkViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func handleFirstTaskButton(_ sender: Any) {
        guard let firstViewController = UIStoryboard(name: "Main", bundle: nil)
                .instantiateViewController(withIdentifier: "firstVC") as? FirstViewController else { return }
        
        navigationController?.pushViewController(firstViewController, animated: true)
    }
    
    @IBAction func handleSecondTaskButton(_ sender: Any) {
        guard let studentViewController = UIStoryboard(name: "Main", bundle: nil)
                .instantiateViewController(withIdentifier: "studentVC") as? StudentViewController else { return }
        
        navigationController?.pushViewController(studentViewController, animated: true)
    }
}
