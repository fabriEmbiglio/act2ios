//
//  ViewController.swift
//  act2
//
//  Created by Alumno on 22/01/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var inputField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after
        
    }

    @IBAction func RollDice(_ sender: Any) {
        var valorRand = Int.random(in: 1..<7)
        
        number.text = String(valorRand)
        
        var num = 0
        if var text = inputField.text{
            num = Int(text)!
        }
        
        if(num == valorRand){
            message.text = "Acertaste"
            view.backgroundColor = UIColor.green
        } else {
            message.text = "No acertaste"
            view.backgroundColor = UIColor.red
        }
            
    }
    
}

