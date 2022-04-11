//
//  FourthViewController.swift
//  Homework-9
//
//  Created by Alex on 10.04.22.
//

import UIKit

class FourthViewController: UIViewController {
    
    var textFromThirdVC = String()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func handleFindTextButton(_ sender: Any) {
        guard let fifthViewController = UIStoryboard(name: "Main", bundle: nil)
                .instantiateViewController(withIdentifier: "fifthVC") as? FifthViewController else { return }
        
        navigationController?.pushViewController(fifthViewController, animated: true)
        fifthViewController.textFromFourthVC = textFromThirdVC
    }
}
