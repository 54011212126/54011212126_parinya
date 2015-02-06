//
//  ViewController.swift
//  TestWeek4
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var sum : Int = 0
    
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var resetAllButton: UIButton!
    
    @IBOutlet weak var oneLabel: UILabel!
    @IBOutlet weak var twoLabel: UILabel!
    @IBOutlet weak var threeLabel: UILabel!
    
    
    @IBAction func oneActionButton(sender: AnyObject) {
        sum += 1
        oneLabel.text = String(format: "%d", sum)
    }
    @IBAction func twoActionButton(sender: AnyObject) {
        sum += 2
        twoLabel.text = String(format: "%d", sum)
    }
    @IBAction func threeActionButton(sender: AnyObject) {
        sum += 3
        threeLabel.text = String(format: "%d", sum)
    }
    @IBAction func resetActionButton(sender: AnyObject) {
        oneLabel.text = "0"
        twoLabel.text = "0"
        threeLabel.text = "0"
        sum = 0
        
    }
    @IBAction func viewtapped(sender: AnyObject) {
       
    }
}


