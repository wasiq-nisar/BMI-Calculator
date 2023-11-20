//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Muhammad Wasiq  on 06/11/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var BMIValue: String?
    var BMIAdvice: String?
    var BMIColor: UIColor?
    
    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var advicelabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        BMILabel.text = BMIValue
        advicelabel.text = BMIAdvice
        view.backgroundColor = BMIColor
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
