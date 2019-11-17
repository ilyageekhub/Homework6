//
//  ViewController.swift
//  myApp
//
//  Created by Admin on 17.11.2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirtsLabel: UILabel!
    @IBAction func OnClickFirstButton(_ sender: Any) {
        FirtsLabel.text = "newvalue1"
    }
    
    // MARK: - second task
    
    @IBOutlet weak var LabelSegControl: UILabel!
    @IBOutlet weak var SegContol: UISegmentedControl!
    @IBAction func ActionSegControl(_ sender: Any) {
        LabelSegControl.text = String (SegContol.selectedSegmentIndex + 1)
    }
    
    // MARK: - third task
    
    @IBAction func OnTextChange(_ sender: Any) {
        LabelTextEdit.text = TextEdit.text
    }
    @IBOutlet weak var LabelTextEdit: UILabel!
    @IBOutlet weak var TextEdit: UITextField!
    @IBOutlet weak var Slider: UISlider!
    @IBOutlet weak var LabelSlider: UILabel!
    @IBAction func ActionSlider(_ sender: Any) {
        LabelSlider.text = String (Int(Slider.value * 100))
    }
    @objc func textFieldDidChange(_ textField: UITextField) {
    LabelTextEdit.text = TextEdit.text
    }
    // MARK: - 5th task
    
    @IBAction func ActionSwitch(_ sender: Any) {
        view.backgroundColor = Switch.isOn ?
            .yellow: .white
    }
    @IBOutlet weak var Switch: UISwitch!
    // MARK: - 6th task
    
    
    @IBOutlet weak var Activity: UIActivityIndicatorView!
    @IBAction func ActionActivity(_ sender: Any) {
        if Activity.isAnimating{
            Activity.stopAnimating()
        } else{
            Activity.startAnimating()
        }
    }
    // MARK: - 7th task
    
    @IBAction func ActionStepper(_ sender: Any) {
        LabelStepper.text = String (Int(Stepper.value))
    }
    @IBOutlet weak var LabelStepper: UILabel!
    @IBOutlet weak var Stepper: UIStepper!
    
     // MARK: - 8th task
    
    @IBOutlet weak var Image: UIImageView!
    @IBAction func ActionImage(_ sender: Any) {
        if Image.image == nil{
            Image.image = #imageLiteral(resourceName: "image")
        } else {
            Image.image = nil
        }
    }
    
    // MARK: - 9th task
    
    @IBOutlet weak var SliderAnim: UISlider!
    @IBOutlet weak var ViewAnim: UIView!
    @IBAction func ActionSliderAnim(_ sender: Any) {
        ViewAnim.alpha = CGFloat(1 - SliderAnim.value)
        ViewAnim.layer.cornerRadius = CGFloat(SliderAnim.value * 20)
    }
    
    
    // MARK: - 10th task
    
    @IBOutlet weak var ColorButton: UIButton!
    @IBAction func ActionUpOutside(_ sender: Any) {
        ColorButton.backgroundColor = UIColor(red:   .random(),
        green: .random(),
        blue:  .random(),
        alpha: 1.0)
        
    }
    
    @IBAction func ActionDirectTouch(_ sender: Any) {
        ColorButton.setTitleColor(UIColor(red:   .random(),
        green: .random(),
        blue:  .random(),
        alpha: 1.0), for: .normal)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        Switch.isOn = false
        SliderAnim.value = 0
        TextEdit.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        // Do any additional setup after loading the view.
    }
  
}

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}
