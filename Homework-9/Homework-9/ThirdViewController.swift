//
//  ThirdViewController.swift
//  Homework-9
//
//  Created by Alex on 10.04.22.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var textFromSecondVC = String()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func handleFindTextButton(_ sender: Any) {
        guard let fourthViewController = UIStoryboard(name: "Main", bundle: nil)
                .instantiateViewController(withIdentifier: "fourthVC") as? FourthViewController else { return }
        
        navigationController?.pushViewController(fourthViewController, animated: true)
        fourthViewController.textFromThirdVC = textFromSecondVC
    }
}
