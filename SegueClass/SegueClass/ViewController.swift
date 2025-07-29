//
//  ViewController.swift
//  SegueClass
//
//  Created by Gurleen Singh on 18/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var toggleSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindToRed(UnwinedSegue: UIStoryboardSegue){
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textfield.text
    }
    @IBAction func goToYellowButtonTapped(_ sender: UIButton) {
        if toggleSwitch .isOn{
            performSegue(withIdentifier: "green", sender: nil)
        }
    }
}

