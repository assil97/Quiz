//
//  QuestionBank.swift
//  Quiz
//
//  Created by Syed Shakeeb on 2019-05-23.
//  Copyright © 2019 Syed Shakeeb. All rights reserved.
//

import UIKit
import Foundation

class QuestionBank{
    
    var list = [question]()
    
    init(){
        list.append(question(text:"Is Google parent company is alphabet?", correctanswer:true))
        list.append(question(text:"Does Microsoft owned by Bill Gates?", correctanswer:false))
        list.append(question(text:"Does Apple makes thier own hardware and software", correctanswer:true))
    }
    
}
