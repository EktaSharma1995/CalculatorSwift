//
//  ViewController.swift
//  CalculatorAssignment3
//
//  Created by Ekta Sharma on 2018-10-28.
//  Copyright © 2018 Ekta Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen: Double = 0;
    
    var previousNumber: Double = 0;
    
    var performingMath = false;
    
    var operation = 0;
    

    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = "0";
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var textLabel: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        
        if performingMath == true {
            
            textLabel.text = String(sender.tag-1)
            
            numberOnScreen = Double(textLabel.text!)!
            
            performingMath = false
            
        }
            
        else {
            
            textLabel.text = textLabel.text! + String(sender.tag-1)
            
            numberOnScreen = Double(textLabel.text!)!
            
        }
        
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        
        if textLabel.text != "" && sender.tag != 11 && sender.tag != 16{
            
            previousNumber = Double(textLabel.text!)!
            
            if sender.tag == 12 { //Divide
                
                textLabel.text = "/";
                
            }
            
            if sender.tag == 13 { //Multiply
                
                textLabel.text = "x";
                
            }
            
            if sender.tag == 14 { //Subtract
                
                textLabel.text = "-";
                
            }
            
            if sender.tag == 15 { //Add
                
                textLabel.text = "+";
                
            }
            
            operation = sender.tag
            
            performingMath = true;
            
        }
            
        else if sender.tag == 16 {
            
            if operation == 12{ //Divide
                
                textLabel.text = String(previousNumber / numberOnScreen)
                
            }
                
            else if operation == 13{ //Multiply
                
                textLabel.text = String(previousNumber * numberOnScreen)
                
            }
                
            else if operation == 14{ //Subtract
                
                textLabel.text = String(previousNumber - numberOnScreen)
                
            }
                
            else if operation == 15{ //Add
                
                textLabel.text = String(previousNumber + numberOnScreen)
                
            }
            
        }
            
        else if sender.tag == 11{
            
            textLabel.text = ""
            
            previousNumber = 0;
            
            numberOnScreen = 0;
            
            operation = 0;
            
        }
        

        
    }
    

}

