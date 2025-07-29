//
//  ViewController.swift
//  lifeCycle
//
//  Created by Gurleen Singh on 22/07/25.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View is loaded")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("View is about to appear")
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("View is fully appeared")
        super.viewDidAppear(animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        printContent("View is about to disappear")
        super.viewWillDisappear(animated)
    }
    
}
