//
//  ViewController.swift
//  T-Converter
//
//  Created by Anton Vorozhischev on 03.02.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.minimumValue = 0
            slider.maximumValue = 100
            slider.value = 0
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        celsiusLabel.text = "\(Int(sender.value))ºC"
        fahrenheitLabel.text = "\(Int(sender.value * 9 / 5) + 32)ºF"
    }
}

