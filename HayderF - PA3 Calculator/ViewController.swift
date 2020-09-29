//
//  ViewController.swift
//  HayderF - PA3 Calculator
//
//  Created by Farhaj on 2/10/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var userInput = false
    var operatorPlus = ""
    var num1 = 0
    var num2: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var display: UILabel!
    
    @IBAction func numbersPressed(_ sender: UIButton) {
        let number = sender.currentTitle
        if userInput { display.text = display.text! + number! }
        else {
            display.text = number
            userInput = true
        }
    }
    
    @IBAction func plusOperatorPressed(sender: AnyObject) {
        userInput = false
        num1 = Int(display.text!)!
        operatorPlus = sender.currentTitle!!
    }
    
    @IBAction func equalsOperatorPressed(sender: AnyObject) {
        userInput = false
        var result = 0
        num2 = Int(display.text!)!
        switch operatorPlus {
            case "+": result = num1 + num2
            default: break
        }
        display.text = "\(result)"
    }
}

