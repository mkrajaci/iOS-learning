//
//  Question.swift
//  Quizzler
//
//  Created by Mario Krajačić on 25/11/2017.
//  Copyright © 2017 London App Brewery. All rights reserved.
//

import Foundation

class Question {
        //struktura prema kojoj ce se prikazivati sva pitanja
    let questionText : String
    let answer : Bool
        //Initializer odredjuje sto ce se dogoditi
        //kada se kreira novi objekt i klase Question
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
}
