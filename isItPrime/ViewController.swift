//
//  ViewController.swift
//  isItPrime
//
//  Created by Alan Van Art on 12/12/19.
//  Copyright © 2019 Alan Van Art. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblOutput: UILabel!
    @IBOutlet weak var txtInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblOutput.text = ""
    }

    @IBAction func checkClick(_ sender: Any) {
        var numToCheck:Int?
        
        numToCheck = Int(txtInput.text ?? "")
        
        if isPrime(n: numToCheck!) {
            lblOutput.text = "Yes"
        } else {
            lblOutput.text = "No"
        }
    }
    
    func isPrime(n: Int) -> Bool {
        if n < 2 {
            return false // are not primes
        }
        
        let limit = Int(sqrt(Float(n)))
        
        if limit < 2 {
           return true // 2, 3 are primes
        }
        
        for i in 2...limit {
            if n % i == 0 {
                return false
            }
        }
        
        return true
    }}

