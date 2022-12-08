//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Igor Ivanov on 06.12.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var hintLabel: UILabel!

    private var _bmiValue: Float = 0.0

    var bmiValue: Float {
        set {
            _bmiValue = newValue
            if (scoreLabel != nil) {
                scoreLabel.text = "\(_bmiValue)"
            }
        }

        get {
            return _bmiValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        scoreLabel.text = "\(bmiValue)"
    }

}
