//
//  ViewController.swift
//  EventEditor
//
//  Created by Gurleen Singh on 12/08/25.
//

import UIKit

class FirstVC: UIViewController {
    
    var event: EventEditorModel
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var date: UILabel!
    
    @IBOutlet weak var location: UILabel!
    
    
    @IBOutlet weak var count: UILabel!
    
    init?(coder: NSCoder, event: EventEditorModel) {
        self.event = event
        super.init(coder : coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBSegueAction func passingData(_ coder: NSCoder) -> SecondVC? {
        let event = titleLabel.text ?? ""
        let date = date.text ?? ""
        let location = location.text ?? ""
        let count = count.text ?? ""
        return SecondVC(coder: coder,event: event,date:date,location:location,count:count)
    }
    
    
    func dataPassing(event : String,date : String,location : String,count : String){
        
    }
    
}

