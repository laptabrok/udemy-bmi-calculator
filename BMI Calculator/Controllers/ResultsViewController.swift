//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Igor Ivanov on 07.12.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!

    private var _bmiValue: Float = 0.0

    var bmiValue: Float {
        set {
            _bmiValue = newValue
            if (bmiLabel != nil) {
                bmiLabel.text = String(format: "%.1f", _bmiValue)
            }

            if (adviceLabel != nil) {
                updateAdvice()
            }
        }

        get {
            return _bmiValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        bmiValue = _bmiValue
    }

    private func updateAdvice() {

    }

    @IBAction func recalculatePressed(_ sender: Any) {
        dismiss(animated: true)
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
