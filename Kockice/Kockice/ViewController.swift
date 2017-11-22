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

        //Lijeva kockica
    @IBOutlet weak var diceImageView1: UIImageView!
        //Desna kockica
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        //Gumb
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        //dodjeljivanje slucajnog broja varijabli
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))

        print(randomDiceIndex1)
        print(randomDiceIndex2)

    }
    
}

