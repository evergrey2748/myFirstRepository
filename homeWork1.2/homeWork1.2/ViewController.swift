//
//  ViewController.swift
//  homeWork1.2
//
//  Created by Артур Ким on 07.07.2021.
//

import UIKit

class ViewController: UIViewController {

    var buttonCounter = 0
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopColor: UIView!
    @IBOutlet weak var warningColor: UIView!
    @IBOutlet weak var driveColor: UIView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        stopColor.layer.cornerRadius = stopColor.bounds.height / 2
        warningColor.layer.cornerRadius = warningColor.bounds.height / 2
        driveColor.layer.cornerRadius = driveColor.bounds.height / 2
    
    }

    @IBAction func startButtonPressed() {
        
        buttonCounter += 1

          switch buttonCounter {

          case 1:
            driveColor.alpha = 0.3
            stopColor.alpha = 1.0
            startButton.setTitle("Next", for: .normal)

          case 2:
            stopColor.alpha = 0.3
            warningColor.alpha = 1.0

          case 3:
            warningColor.alpha = 0.3
            driveColor.alpha = 1.0
          buttonCounter = 0

          default: break
    }
    }
    
}

