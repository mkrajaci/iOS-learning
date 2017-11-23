//
//  ViewController.swift
//  Kockice
//
//  Created by Mario Krajačić on 22/11/2017.
//  Copyright © 2017 Mario Krajačić. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
        //deklaracija varijabli
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
        //deklaracija niza kockica
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6",]

        //Lijeva kockica
    @IBOutlet weak var diceImageView1: UIImageView!
        //Desna kockica
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //poziv funkcije za pokretanje kockica
        zavrtiKockice()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        //Gumb
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //poziv funkcije za pokretanje kockica
        zavrtiKockice()
    }
        //funkcija s kojom vrtim kockice
    func zavrtiKockice() {
        //dodjeljivanje slucajnog broja varijabli
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        //generiranje slucajnog broja za kockicu (skraceno)
        diceImageView1.image = UIImage(named: diceArray[Int(arc4random_uniform(6))])
        
        //generiranje slucajnog broja kroz varijalbu
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
        //pokretanje kockica na zavrsetak tresnje telefona
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        zavrtiKockice()
    }
}

