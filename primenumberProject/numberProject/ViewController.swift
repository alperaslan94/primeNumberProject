//
//  ViewController.swift
//  numberProject
//
//  Created by Alperaslan on 23.10.2023.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    
    @IBOutlet weak var numberTextField: UITextField!
    
    
    @IBOutlet weak var checkButton: UIButton!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func checkNumber(_ sender: UIButton) {
        if let inputText = numberTextField.text, let number = Int(inputText) {
            if isPrime(number)  {
                resultLabel.text = "\(number) asal bir sayıdır."
            } else {
                resultLabel.text = "\(number) asal bir sayı değildir."
            }
        } else {
            resultLabel.text = "Geçersiz giriş."
        }
       
    }
    
    func isPrime(_ number: Int) -> Bool {
            // Asal sayı kontrolü için gerekli kodu burada kullanabilirsiniz.
        
        if number <= 1 {
                return false
            }

            if number <= 3 {
                return true
            }

            if number % 2 == 0 || number % 3 == 0 {
                return false
            }

            var i = 5
            while i * i <= number {
                if number % i == 0 || number % (i + 2) == 0 {
                    return false
                }
                i += 6
            }

            return true
        }

       
        
        }
    
    


