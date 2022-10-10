//
//  ViewController.swift
//  UIKitApp
//
//  Created by Сергей Нам on 08.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segmentControll: UISegmentedControl!
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var slider: UISlider!
    @IBOutlet var textField: UITextField!
    @IBOutlet var button: UIButton!
    @IBOutlet var datePicker: UIDatePicker!
    
    @IBOutlet var switchForm: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Segment Control
        segmentControll.insertSegment(withTitle: "Third", at: 2, animated: false)
        
        // MARK: Label
        mainLabel.text = ""
        mainLabel.font = mainLabel.font.withSize(30)
        mainLabel.numberOfLines = 2
        mainLabel.textAlignment = .center
        

        // MARK: Slider
        slider.value = 1
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .blue
        slider.thumbTintColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
        
        mainLabel.text = String(Int(slider.value))
        
        // MARK: Text Field
        textField.textColor = .black
        textField.placeholder = "Введите текст"
        // Набор букв
        textField.keyboardType = .namePhonePad
        // Набор цифр
//        textField.keyboardType = .numberPad
        
        // MARK: Button
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 10
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Сохранить", for: .normal)
        
        
        
}
    
    @IBAction func segmentAction(_ sender: Any) {
        
        switch segmentControll.selectedSegmentIndex {
        case 0:
            mainLabel.text = "Выбран 1"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "Выбран 2"
            mainLabel.textColor = .yellow
        case 2:
            mainLabel.text = "Выбран 3"
            mainLabel.textColor = .green
        default:
            break
        }
    }
    
    
    @IBAction func sliderAction() {
        mainLabel.text = String(Int(slider.value))
    }
    
    
    @IBAction func buttonAction(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else {return}
        mainLabel.text = text
    }
    
    @IBAction func datePickerAction(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        
        mainLabel.text = dateFormatter.string(from: datePicker.date)
    }
    
    
    @IBAction func switchFormAction(_ sender: Any) {
        segmentControll.isHidden = !switchForm.isOn
        mainLabel.isHidden = !switchForm.isOn
        slider.isHidden = !switchForm.isOn
        textField.isHidden = !switchForm.isOn
        button.isHidden = !switchForm.isOn
        datePicker.isHidden = !switchForm.isOn
    }
    
}
