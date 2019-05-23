//
//  question.swift
//  Quiz
//
//  Created by Syed Shakeeb on 2019-05-22.
//  Copyright © 2019 Syed Shakeeb. All rights reserved.
//

import Foundation

class question {
    let question: String
    let answer: Bool
    
    init(text: String, correctanswer: Bool){
        question=text
        answer=correctanswer
    }
}
