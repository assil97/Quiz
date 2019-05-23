//
//  ViewController.swift
//  Quiz
//
//  Created by Syed Shakeeb on 2019-05-22.
//  Copyright © 2019 Syed Shakeeb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var allQuestions = QuestionBank()
    var answercheck : Bool = false
    
    var score_count : Int = 0
    var questionnumber : Int = 0
    
    @IBOutlet weak var questionbank: UITextView!
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var score: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        score.text = String(score_count)
        question.text = String(questionnumber + 1)
        
        let questionlist = allQuestions.list[0]
        questionbank.text = questionlist.question
        
    }

    
    @IBAction func checkanswer(_ sender: AnyObject) {
        if sender.tag == 1{
            answercheck=true
        }
        else if sender.tag == 2{
            answercheck=false
        }
        
        //checks the answer
        checkanswer1()
        //increments the next question
        nextQuestion()
        
    }

    
    func nextQuestion(){
        questionnumber += 1
        if(questionnumber <= 2){
            question.text = String(questionnumber + 1)
            questionbank.text = allQuestions.list[questionnumber].question
        }
        else{
            let alert = UIAlertController(title: "Quiz Finished", message: "The quiz is over!! \n Your total score is: \(score_count)", preferredStyle: .alert)
            
            let restartgame = UIAlertAction(title: "Restart", style: .default, handler:
            {(UIAlertAction) in
                self.startOver()
            })
            
            alert.addAction(restartgame)
            
            present(alert, animated: true, completion: nil)
        }
    }
    
    func startOver(){
        questionnumber = 0
        questionbank.text = allQuestions.list[questionnumber].question
        score_count = 0
        questionnumber = 0
        score.text = String(score_count)
        question.text = String(questionnumber + 1)
    }
    
    func checkanswer1(){
        let answer_check: Bool = allQuestions.list[questionnumber].answer
        
        if answer_check == answercheck{
            score_count += 1
            score.text = String(score_count)
        }
        else{
            score_count += 0
            score.text = String(score_count)
        }
    }
}

