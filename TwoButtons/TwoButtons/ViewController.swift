//
//  ViewController.swift
//  TwoButtons
//
//  Created by Student on 16/07/25.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func setTextButton(_ sender: UIButton) {
        if let text = textField.text {
            label.text = text
            
        }
    }
    
    @IBAction func clearTextButton(_ sender: UIButton) {
        label.text = ""
    }
}

