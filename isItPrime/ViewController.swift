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
    @IBOutlet weak var imgPrime: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblOutput.text = ""
        imgPrime.isHidden = true
    }

    @IBAction func checkClick(_ sender: Any) {
        var numToCheck:Int?
        
        numToCheck = Int(txtInput.text ?? "")
        
        if numToCheck == nil {
            numToCheck = 0
            txtInput.text = "0"
        }
        
        if isPrime(n: numToCheck!) {
            lblOutput.text = "Prime"
            imgPrime.image = UIImage(named: "optimus.png")
            imgPrime.isHidden = false
        } else {
            lblOutput.text = "Not Prime"
            imgPrime.image = UIImage(named: "not-optimus.png")
            imgPrime.isHidden = false
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

