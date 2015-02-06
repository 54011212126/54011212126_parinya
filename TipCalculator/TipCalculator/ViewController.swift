//
//  ViewController.swift
//  TipCalculator
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let tipCalc = TipCalculatorModel(total: 3.25, taxPct: 0.06)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       // refreshUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var totalTextFile: UITextField!
    @IBOutlet weak var taxPctSlider: UISlider!
    @IBOutlet weak var taxPctLabel: UILabel!
    @IBOutlet weak var resultsTextView: UITextView!
    
    @IBAction func calaulateTrapped(sender: AnyObject) {
        //1
        tipCalc.total = Double((totalTextFile.text as NSString).doubleValue)
        //2
        let possibleTips = tipCalc.returnPossibleTips()
        var results = ""
        //3
        for(tipPct, tipValue) in possibleTips{
            //4
            results += "\(tipPct)%: \(tipValue)\n"
        }
        //5
        resultsTextView.text = results
    }
    @IBAction func taxPercentageChanged(sender: AnyObject) {
        tipCalc.taxPct = Double(taxPctSlider.value) / 100.0
        refreshUI()
    }
    @IBAction func viewTapped(sender: AnyObject) {
        totalTextFile.resignFirstResponder()
        
    }
    func refreshUI(){
        //1
        totalTextFile.text = String(format: "%0.2f", tipCalc.total)
        //2
        taxPctSlider.value = Float(tipCalc.taxPct) * 100.0
        //3
        taxPctLabel.text = "Tax Percentage(\(Int(taxPctSlider.value))%)"
        //4
        resultsTextView.text = ""
        
    }
    
}

