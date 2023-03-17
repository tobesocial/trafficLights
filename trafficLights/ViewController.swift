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
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        nextButton.layer.cornerRadius = 20
        
    }
    
    @IBAction func switcLights(_ sender: UIButton) {
        
    }
}
