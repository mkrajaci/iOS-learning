//
//  Question.swift
//  Quizzler
//
//  Created by Mario Krajačić on 25/11/2017.
//  Copyright © 2017 London App Brewery. All rights reserved.
//

        // Objekt je kao nadogradena varijabla,
        // uz deklaraciju slozenu od vise razlicitih tipova
        // u sebe prima i nacin na koji ce se manipulirati s podacima,
        // kao program unutar programa

import Foundation

class Question {
        // Kreiranje novog tipa podataka (objekta) naziva Question
        // sa atributima questionText i answer koji imaju svoj standardni tip
        // string i boolean
        // struktura prema kojoj ce se prikazivati sva pitanja
    let questionText : String
    let answer : Bool
    
        // način popunjavanja klasem gdje ce se koji podatak upisivati
        // Initializer odredjuje sto ce se dogoditi
        // kada se kreira novi objekt i klase Question
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
}
