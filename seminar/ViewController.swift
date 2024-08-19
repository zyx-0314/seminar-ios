//
//  ViewController.swift
//  seminar
//
//  Created by Mac User on 8/16/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var MyView: UIView!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var redSlider: UISlider!
    
    
    @IBAction func blueSliderAction(_ sender: Any) {
        ChangeColor()
    }
    
    @IBAction func greenSliderAction(_ sender: Any) {
        ChangeColor()
    }
    
    @IBAction func redSliderAction(_ sender: Any) {
        ChangeColor()
    }
    
    @IBAction func btnReset(_ sender: Any) {
        redSlider.value = 0.5
        greenSlider.value = 0.5
        blueSlider.value = 0.5
        ChangeColor()
    }
    
    @IBOutlet weak var ageDisplay: UILabel!
    @IBOutlet weak var ageSlider: UISlider!
    
    @IBAction func ageSliderAction(_ sender: Any) {
        let age = Int(ageSlider.value) + 18
        ageDisplay.text = "\(age)"
    }
    
    func ChangeColor() {
        MyView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }
    
    
    @IBOutlet weak var inputUsername: UITextField!
    @IBOutlet weak var displayName: UILabel!
    
    
    @IBAction func inputUsernameAction(_ sender: Any) {
        displayName.text = "\(inputUsername.value)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ChangeColor()
        // Do any additional setup after loading the view.
    }

    
}

