//
//  ViewController.swift
//  myTrafficLightsApp
//
//  Created by Admin on 14.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 20
        redLightView.layer.cornerRadius = 50
        yellowLightView.layer.cornerRadius = 50
        greenLightView.layer.cornerRadius = 50
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3

    }

    
    @IBAction func startButtonPressed() {
        switch CGFloat(1.0) {
        case redLightView.alpha:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
        case yellowLightView.alpha:
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        case greenLightView.alpha:
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
        default:
            redLightView.alpha = 1
            startButton.setTitle("NEXT", for: .normal)
        }
    }
}

