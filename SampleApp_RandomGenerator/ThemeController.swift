//
//  ThemeController.swift
//  SampleApp_RandomGenerator
//
//  Created by SBulama on 11/14/16.
//  Copyright © 2016 Hasmaya Tech. All rights reserved.
//

import UIKit

class ThemeController: UIViewController {
    
    //MARK: Labels
    @IBOutlet weak var StepValue: UILabel!
    @IBOutlet weak var switchState: UISwitch!
    @IBOutlet weak var themeLabel: UILabel!
    
    var stepperValue = 0
    var bgColorFlag = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: Functions
    @IBAction func stepperValueChanged(_ stepper: UIStepper) {
        stepperValue = Int(stepper.value)
        StepValue.text = "Step: \(stepperValue)"
    }
    
    @IBAction func switchchanged(_ switch: UISwitch) {
        //if bgColorFlag == 0 {
        if switchState.isOn {
            self.view.backgroundColor = .black
            themeLabel.text = "Dark Theme"
        }
        else {
            self.view.backgroundColor = .white
            themeLabel.text = "Light Theme"
            
        }
     //   }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
