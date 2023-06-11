//
//  CalculatorViewController.swift
//  20230610_Calculator
//
//  Created by Yen Lin on 2023/6/10.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    
    var typeNumber: String = "0"
    var firstNumber : String = "0"
    var secondNumber: String = "0"
    
    var calculateType: String = "equal"
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
        
    }
    
    func updateUI(){
        numberLabel.text = typeNumber
    }
    
    @IBAction func zeroButton(_ sender: Any) {
        
        //字串前一個數字是否為0？
        let endIndex = typeNumber.index(before: typeNumber.endIndex)
        
        if typeNumber[endIndex] != "0" {
            typeNumber += "0"
        } else {
            typeNumber = "0"
        }
        
        updateUI()
    }
    
    @IBAction func dotButton(_ sender: Any) {
        
        let endIndex = typeNumber.index(before: typeNumber.endIndex)
        
        if typeNumber[endIndex] != "." {
            typeNumber += "."
        } else {
        }
        
        updateUI()
    }
    
    @IBAction func oneButton(_ sender: Any) {

        let endIndex = typeNumber.index(before: typeNumber.endIndex)
        
        if typeNumber[endIndex] != "0" {
            typeNumber += "1"
        } else {
            typeNumber = "1"
        }
        
        updateUI()
    }
    
    @IBAction func twoButton(_ sender: Any) {

        let endIndex = typeNumber.index(before: typeNumber.endIndex)
        
        if typeNumber[endIndex] != "0" {
            typeNumber += "2"
        } else {
            typeNumber = "2"
        }
        
        updateUI()
    }
    
    @IBAction func threeButton(_ sender: Any) {
        let endIndex = typeNumber.index(before: typeNumber.endIndex)
        
        if typeNumber[endIndex] != "0" {
            typeNumber += "3"
        } else {
            typeNumber = "3"
        }
        
        updateUI()
    }
    
    @IBAction func fourButton(_ sender: Any) {
        let endIndex = typeNumber.index(before: typeNumber.endIndex)
        
        if typeNumber[endIndex] != "0" {
            typeNumber += "4"
        } else {
            typeNumber = "4"
        }
        
        updateUI()
    }
    
    @IBAction func fiveButton(_ sender: Any) {
        let endIndex = typeNumber.index(before: typeNumber.endIndex)
        
        if typeNumber[endIndex] != "0" {
            typeNumber += "5"
        } else {
            typeNumber = "5"
        }
        
        updateUI()
    }
    
    @IBAction func sixButton(_ sender: Any) {
        let endIndex = typeNumber.index(before: typeNumber.endIndex)
        
        if typeNumber[endIndex] != "0" {
            typeNumber += "6"
        } else {
            typeNumber = "6"
        }
        
        updateUI()
    }
    
    @IBAction func sevenButton(_ sender: Any) {
        let endIndex = typeNumber.index(before: typeNumber.endIndex)
        
        if typeNumber[endIndex] != "0" {
            typeNumber += "7"
        } else {
            typeNumber = "7"
        }
        
        updateUI()
    }
    
    @IBAction func eightButton(_ sender: Any) {
        let endIndex = typeNumber.index(before: typeNumber.endIndex)
        
        if typeNumber[endIndex] != "0" {
            typeNumber += "8"
        } else {
            typeNumber = "8"
        }
        
        updateUI()
    }
    
    @IBAction func nineButton(_ sender: Any) {
        let endIndex = typeNumber.index(before: typeNumber.endIndex)
        
        if typeNumber[endIndex] != "0" {
            typeNumber += "9"
        } else {
            typeNumber = "9"
        }
        
        updateUI()
    }
    
    @IBAction func acButton(_ sender: Any) {
        typeNumber = "0"
        updateUI()
    }
    
    @IBAction func plusMinusButton(_ sender: Any) {
        
        var startIndex = typeNumber.index(typeNumber.startIndex, offsetBy: 0)
        
        if typeNumber[startIndex] != "-" {
            typeNumber = "-" + typeNumber
        } else {
            //把字串的第一個負號拿掉
            startIndex = typeNumber.index(typeNumber.startIndex, offsetBy: 1)
            typeNumber = String(typeNumber.suffix(from: startIndex))
        }
        
        updateUI()
    
    }
    
    @IBAction func percentButton(_ sender: Any) {
        typeNumber = String( Double(typeNumber)! / 100 )
        updateUI()
    }
    
    @IBAction func divideButton(_ sender: Any) {
        firstNumber = typeNumber
        typeNumber = "0"
        
        calculateType = "divide"
        
    }
    
    @IBAction func multiplyButton(_ sender: Any) {
        firstNumber = typeNumber
        typeNumber = "0"
        
        calculateType = "multiply"
    }
    
    @IBAction func plusButton(_ sender: Any) {
        firstNumber = typeNumber
        typeNumber = "0"
        
        calculateType = "plus"
    }
    
    @IBAction func minusButton(_ sender: Any) {
        firstNumber = typeNumber
        typeNumber = "0"
        
        calculateType = "minus"
    }
    
    
    
    
    
    @IBAction func equalButton(_ sender: Any) {
        var calculationResult: Double = 0.0
        
        secondNumber = typeNumber
        
        switch calculateType {
        case "divide":
            calculationResult = Double(firstNumber)! / Double(secondNumber)!
        case "multiply":
            calculationResult = Double(firstNumber)! * Double(secondNumber)!
        case "plus":
            calculationResult = Double(firstNumber)! + Double(secondNumber)!
        case "minus":
            calculationResult = Double(firstNumber)! - Double(secondNumber)!
        default:
            break
        }
        
        typeNumber = String(calculationResult)
        updateUI()
        
    }
    
    
    
    
}
