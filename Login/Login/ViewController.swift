//
//  ViewController.swift
//  Login
//
//  Created by Gurleen Singh on 18/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!

    @IBOutlet weak var forgotUserNameButton: UIButton!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "forgottenUserNameOrPassword"{
            guard let sender = sender as? UIButton else {return}
            
            if sender == forgotUserNameButton {
                segue.destination.navigationItem.title = "Forgot Username"
            }else if sender == forgotPasswordButton {
                segue.destination.navigationItem.title = "Forgot Password"
            }
        }else{
            segue.destination.navigationItem.title = usernameField.text
        }
    }

    @IBAction func ForgottenUserNameAction(_ sender: UIButton) {
        performSegue(withIdentifier: "forgottenUserNameOrPassword", sender: sender)
    }
    
    @IBAction func forgotPasswordAction(_ sender: UIButton) {
        performSegue(withIdentifier: "forgottenUserNameOrPassword", sender: sender)
    }
}

