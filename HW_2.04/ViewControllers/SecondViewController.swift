//
//  ViewController.swift
//  HW_2.04
//
//  Created by Бийбол Зулпукаров on 27/5/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    
    @IBOutlet var pointNumberOfRed: UILabel!
    @IBOutlet var pointNumberOfGreen: UILabel!
    @IBOutlet var pointNumberOfBlue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    var delegate: SecondViewControllerDelegate!
    
    var mainViewColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        mainView.layer.cornerRadius = 20
        
        setupMainViewColor()
        
        setupLabelOfColor()
        
        mainView.backgroundColor = mainViewColor
    }
    
    
    @IBAction func sliderAction() {
        setupMainViewColor()
        
        setupLabelOfColor()
    }
    
    @IBAction func doneButtonPressed(_ sender: UIButton) {
        delegate.setupColor(color: mainView.backgroundColor ?? .black)
        dismiss(animated: true)
    }
    
    // MARK: - Private Functions
    private func setupLabelOfColor() {
        pointNumberOfRed.text = String(format: "%.2f", redSlider.value)
        pointNumberOfGreen.text = String(format: "%.2f", greenSlider.value)
        pointNumberOfBlue.text = String(format: "%.2f", blueSlider.value)
    }
    
    private func setupMainViewColor() {
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
}

