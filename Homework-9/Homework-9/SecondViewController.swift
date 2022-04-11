//
//  SecondViewController.swift
//  Homework-9
//
//  Created by Alex on 10.04.22.
//

import UIKit

class SecondViewController: UIViewController {
    
    var textFromFirstVC = String()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func handleFindTextButton(_ sender: Any) {
        guard let thirdViewController = UIStoryboard(name: "Main", bundle: nil)
                .instantiateViewController(withIdentifier: "thirdVC") as? ThirdViewController else { return }
        
        navigationController?.pushViewController(thirdViewController, animated: true)
        thirdViewController.textFromSecondVC = textFromFirstVC
    }

}
