//
//  FifthViewController.swift
//  HomeWork-8
//
//  Created by Alex on 5.04.22.
//

import UIKit

protocol FifthViewControllerDelegate {
    func passTextFromTextFIeld(text: String)
}

class FifthViewController: UIViewController {

    @IBOutlet weak var finalTextLabel: UILabel!
    
    var delegate: FifthViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true) {
            self.delegate?.passTextFromTextFIeld(text: self.finalTextLabel.text ?? "")
        }
    }
}
