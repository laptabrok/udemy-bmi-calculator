//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLable: UILabel!

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!

    let maxHeight: Float = 4.0 // meters
    let maxWeight: Float = 1000.0 // kilos

    var height: Float {
        get {
            return heightSlider.value * maxHeight
        }
        set {
            heightSlider.value = newValue / maxHeight
            heightLabel.text = String(format: "%.2f m", newValue)
        }
    }

    var weight: Float {
        get {
            return weightSlider.value * maxWeight
        }
        set {
            weightSlider.value = newValue / maxWeight
            weightLable.text = String(format: "%.2f m", newValue)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        heightSlider.minimumValue = 0.0
        heightSlider.maximumValue = 1.0

        weightSlider.minimumValue = 0.0
        weightSlider.maximumValue = 1.0

        height = 0.0
        weight = 0.0
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        if (sender == heightSlider) {
            onHeightChange(to: height)
        } else if (sender == weightSlider) {
            onWeightChange(to: weight)
        }
    }

    func onHeightChange(to value: Float) {
        heightLabel.text = String(format: "%.2f m", value)
    }

    func onWeightChange(to value: Float) {
        weightLable.text = String(format: "%.2f kg", value)
    }

    @IBAction func calculatePressed(_ sender: Any) {
        performSegue(withIdentifier: "showResults", sender: self)
//        self.present(svc, animated: true, completion: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "showResults") {
            var bmi: Float = 0.0

            if (height > 0) {
                bmi = weight / (height * height)
            }

            let resultsVC = segue.destination as! ResultsViewController
            resultsVC.bmiValue = bmi
        }
    }

}

