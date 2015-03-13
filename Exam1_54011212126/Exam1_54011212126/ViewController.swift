//
//  ViewController.swift
//  Exam1_54011212126
//
//  Created by iStudents on 3/13/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   let grade = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var subjectLabel: UILabel!
    @IBOutlet weak var subjectText: UITextField!

    @IBOutlet weak var midLabel: UILabel!
    @IBOutlet weak var midText: UITextField!
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var scoreText: UITextField!
    
    @IBOutlet weak var finalLabel: UILabel!
    @IBOutlet weak var finalText: UITextField!
    
    @IBOutlet weak var totalScoreButton: UIButton!
    @IBOutlet weak var totalScoreTextview: UITextView!
    @IBOutlet weak var subjectTextview: UITextView!
    
    @IBAction func result(sender: AnyObject) {
        
//       midText.total = Double((midText.text as NSString).doubleValue)
//       scoreText.total = Double((scoreText.text as NSString).doubleValue)
//       finalText.total = Double((finalText.text as NSString).doubleValue)
//
//        //2
//        let possibleTips = gradeModel.returnPossibleTips()
//        var results = ""
//        //3
//        for(tipPct, tipValue) in possibleTips{
//            //4
//            results += "\(tipPct)%: \(tipValue)\n"
//        }
//        //5
//        totalScoreTextview.text = results
        
        
        subjectTextview.text = subjectText.text
        totalScoreTextview.text =  midText.text + scoreText.text + finalText.text
    }    
    func refreshUI(){
        //1
        midText.text = String(format: "%0.2f")
        scoreText.text = String(format: "%0.2f")
        finalText.text = String(format: "%0.2f")
        //2
        totalScoreTextview.text = ""
        
    }
}

    


