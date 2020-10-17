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
    
    private let isOff: CGFloat = 0.3
    private let isOn: CGFloat = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 20
        redLightView.alpha = isOff
        yellowLightView.alpha = isOff
        greenLightView.alpha = isOff
        
    }
    
    override func viewWillLayoutSubviews() {
        let cornerRadius = redLightView.frame.width / 2
        
        redLightView.layer.cornerRadius = cornerRadius
        yellowLightView.layer.cornerRadius = cornerRadius
        greenLightView.layer.cornerRadius = cornerRadius
    }
    
    
    @IBAction func startButtonPressed() {
        switch isOn {
        case redLightView.alpha:
            redLightView.alpha = isOff
            yellowLightView.alpha = isOn
        case yellowLightView.alpha:
            yellowLightView.alpha = isOff
            greenLightView.alpha = isOn
        case greenLightView.alpha:
            greenLightView.alpha = isOff
            redLightView.alpha = isOn
        default:
            redLightView.alpha = isOn
            startButton.setTitle("NEXT", for: .normal)
        }
    }
}

