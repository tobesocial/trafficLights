//
//  ViewController.swift
//  trafficLights
//
//  Created by Дмитрий Федоров on 17.03.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var nextButton: UIButton!
    
    private var currentLight = "red"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
        
    @IBAction func switcLights(_ sender: UIButton) {
        sender.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case "red":
            redLight.alpha = 1
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
            currentLight = "yellow"
        case "yellow":
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            greenLight.alpha = 0.3
            currentLight = "green"
        case "green":
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            currentLight = "red"
        default:
            break
        }
    }
    
    private func rounded(view: UIView) {
        view.layer.cornerRadius = 75
    }
    
    private func changeOfBrightness(view: UIView) {
        view.alpha = 0.3
    }
    
    private func setupView() {
        rounded(view: yellowLight)
        rounded(view: redLight)
        rounded(view: greenLight)
        changeOfBrightness(view: yellowLight)
        changeOfBrightness(view: redLight)
        changeOfBrightness(view: greenLight)
        nextButton.layer.cornerRadius = 20
    }
}
