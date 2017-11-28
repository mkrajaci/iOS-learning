//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
        // deklaracija varilabli
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            // pri pokretanju pokazuje sljedece pitanje, u ovom slucaju prvo
            // jer je brojac questionNumber = 0
        nextQuestion()
    }

    @IBAction func answerPressed(_ sender: AnyObject) {
            // ako je odabran odgovor sa tag-om 1
            // u ovom slucaju "true" 
        if sender.tag == 1 {
            pickedAnswer = true
        }
            // ili tag 2 u ovom slucaju "false"
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        questionNumber += 1
        nextQuestion()
    }
    
    func updateUI() {
            // u ovoj metodi radimo izmjene na svemu sto se tice user interface-a
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber + 1) / 13"
            // popunjavanje progress bara podjelili smo je na 13 dijelova
            // i svaki taj dio povecavamo pomocu brojaca pitanja (naravno + 1 jer ide od 0)
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
      
    }
    
    func nextQuestion() {
            // ako je "questionNumber" manji ili jednak 12 onda na ekranu
            // u questionLabel upisi novo pitanje
        if questionNumber <= 12 {
        questionLabel.text = allQuestions.list[questionNumber].questionText
            // update ue+ser interface
            updateUI()
        }
        else {
            // kada dodje do 13 to je zavrsetak pitanja, pojavljuje se
            // skocna poruka o zavrsetku
            // i poziva metodu o restartu aplikacije
            let alert = UIAlertController(title: "Super", message: "Dosli ste do kraja, zelite li poceti ponovno?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver()
            })
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }

    }
    
    func checkAnswer() {
            // usporedba odabranog odgovora sa tocnim odgovorom
            // i pocecaj rezultat
        if pickedAnswer == allQuestions.list[questionNumber].answer {
            score += 1
        }
    }
    
    func startOver() {
            // restart aplikacije nakon zadnjeg pitanja
        questionNumber = 0
        score = 0
        nextQuestion()
    }
    
}
