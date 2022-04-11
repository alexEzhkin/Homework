//
//  ViewController.swift
//  Homework-9
//
//  Created by Alex on 8.04.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func handleFirstTaskButton(_ sender: Any) {
        guard let firstTaskViewContoller = UIStoryboard(name: "Main", bundle: nil)
                .instantiateViewController(withIdentifier: "firstTaskVC") as? FirstTaskViewController else { return }
        
        navigationController?.pushViewController(firstTaskViewContoller, animated: true)
    }
    
    @IBAction func handleSecondTaskButton(_ sender: Any) {
        guard let secondTaskViewContoller = UIStoryboard(name: "Main", bundle: nil)
                .instantiateViewController(withIdentifier: "secondTaskVC") as? SecondTaskViewController else { return }
        
        navigationController?.pushViewController(secondTaskViewContoller, animated: true)
    }
    
    @IBAction func handleThirdTaskButton(_ sender: Any) {
        guard let thirdTaskViewContoller = UIStoryboard(name: "Main", bundle: nil)
                .instantiateViewController(withIdentifier: "thirdTaskVC") as? ThirdTaskViewController else { return }
        
        navigationController?.pushViewController(thirdTaskViewContoller, animated: true)
    }
    
    @IBAction func handleLastHomeworkButton(_ sender: Any) {
        guard let previousHomeworkViewController = UIStoryboard(name: "Main", bundle: nil)
                .instantiateViewController(withIdentifier: "previousHomeworkVC") as? PreviousHomeworkViewController else { return }
        
        navigationController?.pushViewController(previousHomeworkViewController, animated: true)
    }
}

