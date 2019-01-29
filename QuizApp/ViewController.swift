//
//  ViewController.swift
//  QuizApp
//
//  Created by Logan Mayo on 1/27/19.
//  High Point University
//  Copyright © 2019 Logan Mayo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?",
        "What is the capital of North Carolina",
        "What year was High Point University founded",
        "What is the coldest recorded temperature in High Point",
        "What is the hottest recorded temperature in High Point",
        "What is the furniture capital of the world"
        
    ]
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes",
        "Raleigh",
        "1924",
        "-34 F",
        "102.9 F",
        "High Point, NC"
        
        
    ]
    var currentQuestionIndex: Int = 0
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
}
