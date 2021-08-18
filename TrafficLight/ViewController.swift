//
//  ViewController.swift
//  TrafficLight
//
//  Created by Ярослав Бойко on 18.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.alpha = CGFloat(0.3)
        yellowLightView.alpha = CGFloat(0.3)
        greenLightView.alpha = CGFloat(0.3)
        
        
        redLightView.layer.cornerRadius = 55
        yellowLightView.layer.cornerRadius = 55
        greenLightView.layer.cornerRadius = 55
        startButton.layer.cornerRadius = 10
    }

    @IBAction func startButtonPressed() {
        startButton.setTitle("Next", for: .normal)
        
        if redLightView.alpha != 1 && yellowLightView.alpha != 1 {
            redLightView.alpha = 1
            greenLightView.alpha = 0.3
        } else if redLightView.alpha == 1 {
            yellowLightView.alpha = 1
            redLightView.alpha = 0.3
        } else if yellowLightView.alpha == 1 {
            greenLightView.alpha = 1
            yellowLightView.alpha = 0.3
        } else {
            
        }
        
    }
    
}

