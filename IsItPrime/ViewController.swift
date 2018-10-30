//
//  ViewController.swift
//  IsItPrime
//
//  Created by Nicholas Burcin on 10/27/18.
//  Copyright © 2018 Burcin Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var primeLbl: UILabel!
    @IBOutlet weak var primeTextField: UITextField!
    @IBOutlet weak var enterBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        primeTextField.layer.cornerRadius = 10.0
        primeTextField.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        primeTextField.alpha = 0.9
        primeTextField.clipsToBounds = true
        enterBtn.layer.cornerRadius = 10.0
        enterBtn.backgroundColor = #colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 1)
        primeLbl.layer.cornerRadius = 10.0
        primeLbl.clipsToBounds = true
    }

    @IBAction func isItPrimeBtnPressed(_ sender: Any) {
        if let userEnteredString = primeTextField.text {
            let userEnteredInteger = Int(userEnteredString)
            if let number = userEnteredInteger {
                var isPrime = true
                if number == 1 {
                    isPrime = false
                }
                var i = 2
                while i < number {
                    if number %  i == 0 {
                        isPrime = false
                    }
                    i += 1
                }
                if isPrime {
                    primeLbl.text = "\(number) is a prime number!"
                } else {
                    primeLbl.text = "\(number) is NOT a prime number!"
                }
                
            } else {
                primeLbl.text = "Please enter a positive whole number!"
            }
        }
        primeTextField.text = ""
        primeTextField.resignFirstResponder()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

