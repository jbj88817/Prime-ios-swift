//
//  ViewController.swift
//  HelloWorld
//
//  Created by Bojie Jiang on 7/30/15.
//  Copyright © 2015 Bojie Jiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var numberTextFild: UITextField!
    

    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func isPrime(sender: AnyObject) {
        
        let number = Int(numberTextFild.text!)!
        
        var isPrime = true
        
        if number == 1 {
            isPrime = false
        }
        
        if number != 2 && number != 1 {
            for var i = 2; i < number; i++ {
                if number % i == 0 {
                    isPrime = false
                    break
                }
            }
        }
        
        print(isPrime)
        
        if isPrime {
            
            resultLabel.text = "\(number) is prime!"
        } else {
            resultLabel.text = "\(number) is not prime!"
        }

        
    }
   

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

