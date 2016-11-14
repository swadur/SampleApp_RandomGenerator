//
//  ViewController.swift
//  SampleApp_RandomGenerator
//
//  Created by SBulama on 11/7/16.
//  Copyright © 2016 Hasmaya Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lowerBoundField: UITextField!
    @IBOutlet var upperBoundField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    var lowerBound = 1
    var upperBound = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //lowerBoundField.text = "Hello"
        //upperBoundField.text = "World!"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func generateRandomNum(_ button: UIButton) {
        lowerBound = Int(lowerBoundField.text!)!
        upperBound = Int(upperBoundField.text!)!
        let result = lowerBound + Int(arc4random_uniform(UInt32(upperBound)))
        resultLabel.text = String(result)
    }


}

