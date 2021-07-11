//
//  ViewController.swift
//  homeWork 2.2
//
//  Created by Артур Ким on 11.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redColor: UILabel!
    @IBOutlet weak var greenColor: UILabel!
    @IBOutlet weak var blueColor: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var colorWindow: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColor.text = "Red:"
        redColor.textColor = .red
        greenColor.text = "Green:"
        greenColor.textColor = .green
        blueColor.text = "Blue:"
        blueColor.textColor = .blue
        
        redSlider.value = 1
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
        
        greenSlider.value = 1
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
        
        blueSlider.value = 1
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
        
        colorWindow.layer.cornerRadius = 10
    }
    
    func changeColor() {
        colorWindow.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }

    @IBAction func redSliderAction() {
        redLabel.text = String(redSlider.value)
        changeColor()
    }
    
    @IBAction func greenSliderAction() {
        greenLabel.text = String(greenSlider.value)
        changeColor()
    }
    
    @IBAction func blueSliderAction() {
        blueLabel.text = String(blueSlider.value)
        changeColor()
    }
    
}

