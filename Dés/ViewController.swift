//
//  ViewController.swift
//  Dés
//
//  Created by Flia Beltran Mendez on 24/09/18.
//  Copyright © 2018 Tmax. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    @IBOutlet weak var diceImagenView2: UIImageView!
    @IBOutlet weak var diceImagenView1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
        
    }
    
    func updateDiceImages(){//Funcion para cambiar aleatoria mente los dados
        randomDiceIndex1 = Int(arc4random_uniform(6))//le asigno a la variable un numero con un codigo aleatoria de 1 a 6
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImagenView1.image = UIImage(named: diceArray[randomDiceIndex1])//Programaticamente cambio las imagenes de acuerdo a mi dado
        diceImagenView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {//con esta funcion puedo hacer que al sacudir el iphone me cambie los dados
        updateDiceImages()
    }
    
}

