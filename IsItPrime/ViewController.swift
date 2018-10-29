//
//  ViewController.swift
//  IsItPrime
//
//  Created by Nicholas Burcin on 10/27/18.
//  Copyright © 2018 Burcin Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var primeLbl: UILabel!
    
    @IBOutlet weak var primeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
                    primeLbl.text = "\(number) is not a prime number!"
                }
                
            } else {
                primeLbl.text = "Please enter a positive whole number!"
            }
        }
    }
    
}

