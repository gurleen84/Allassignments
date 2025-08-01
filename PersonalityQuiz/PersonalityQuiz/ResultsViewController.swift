//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Gurleen Singh on 29/07/25.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var resultAnswerLabel: UILabel!
    
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    var responses : [Answer]
    init?(coder:NSCoder,responses:[Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true
    }
    func calculatePersonalityResult(){
        let frequencyOfAnswers = responses.reduce(into:[:]){
            (counts,answer) in counts[answer.type,default: 0] += 1
        }
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by:{(pair1,pair2) in return pair1.value > pair2.value
        })
        let mostCommonAnswer = frequentAnswersSorted.first!.key
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefinitionLabel.text = mostCommonAnswer.definition
    }
   
    


}
