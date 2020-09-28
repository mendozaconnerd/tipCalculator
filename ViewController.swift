//  ViewController.swift
//  TipCalculator
//
//  Created by David Mendoza-Conner on 1/26/18.
//  Copyright © 2018 DMC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelTotal: UILabel!
    @IBOutlet weak var labelTip: UILabel!
    var labelString:String = ""
    var savedNum:Double = 0
    var tempNum:Double = 0.0
    
    //Tapped Percent
    @IBAction func tapped20(_ sender: Any) {
        tempNum = savedNum * 0.2
        tempNum = Double(round(tempNum*100)/100)
        labelTip.text = "$" + "\(tempNum)"
    }
    @IBAction func tapped18(_ sender: Any) {
        tempNum = savedNum * 0.18
        tempNum = Double(round(tempNum*100)/100)
        labelTip.text = "$" + "\(tempNum)"
    }
    @IBAction func tapped15(_ sender: Any) {
        tempNum = savedNum * 0.15
        tempNum = Double(round(tempNum*100)/100)
        labelTip.text = "$" + "\(tempNum)"
    }
    // Tapped Numbers
    @IBAction func tapped0(_ sender: Any) {tappedNum(num:0)}
    @IBAction func tapped1(_ sender: Any) {tappedNum(num:1)}
    @IBAction func tapped2(_ sender: Any) {tappedNum(num:2)}
    @IBAction func tapped3(_ sender: Any) {tappedNum(num:3)}
    @IBAction func tapped4(_ sender: Any) {tappedNum(num:4)}
    @IBAction func tapped5(_ sender: Any) {tappedNum(num:5)}
    @IBAction func tapped6(_ sender: Any) {tappedNum(num:6)}
    @IBAction func tapped7(_ sender: Any) {tappedNum(num:7)}
    @IBAction func tapped8(_ sender: Any) {tappedNum(num:8)}
    @IBAction func tapped9(_ sender: Any) {tappedNum(num:9)}
    @IBAction func tappedDecimal(_ sender: Any) {tappedNum(num:10)}
    @IBAction func tappedClear(_ sender: Any) {
        savedNum = 0
        labelString = ""
        labelTotal.text = "$0.00"
        labelTip.text = "$0.00"
    }
    
    func tappedNum(num:Int){
        if num == 10{
            labelString = labelString.appending(".")
        }else{
            labelString = labelString.appending("\(num)")
        }
        updateText()
    }
    func updateText(){
        labelTotal.text = "$" + "\(labelString)"
        savedNum = Double(labelString)!
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

