//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Mario Krajačić on 23/11/2017.
//  Copyright © 2017 Mario Krajačić. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        //deklariranje niza sa imenima kugli
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //pokretanje kugle pri pokretanju aplikacije
        pokretanjeKugle()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        //pokretanje kugle na gumb "pitaj"
        pokretanjeKugle()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        //pokretanje kugle na tresnju mobitela
        pokretanjeKugle()
    }
    
        //funkcija za promjenu slika kugli
    func pokretanjeKugle(){
        imageView.image = UIImage(named: ballArray[Int(arc4random_uniform(5))])
    }
}

