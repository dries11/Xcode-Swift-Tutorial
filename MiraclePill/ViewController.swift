//
//  ViewController.swift
//  MiraclePill
//
//  Created by Dan Ries on 5/1/17.
//  Copyright © 2017 Dan Ries. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var zipcodeLabel: UILabel!
    @IBOutlet weak var zipcodeTextBox: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    
    let states = ["Alabama","Alaska","Arizona","Arkansas","California","Colorado","Conneticut","Delaware","Florida","Georgia","Hawaii","Idaho","Illinois","Indiana","Iowa","Kansas","Kentucky","Louisiana","Maine","Maryland","Massachusetts","Michigan","Minnesota","Mississippi","Missouri","Montana","Nebraska","Nevada","New Hampshire","New Jersey","New Mexico","New York","North Carolina","North Dakota","Ohio","Oklahoma","Oregon","Pennsylvania","Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah","Vermont","Virginia","Washington","West Virginia","Wisconsin","Wyoming"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self;
        statePicker.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        countryLabel.isHidden = true;
        countryTextField.isHidden = true;
        zipcodeLabel.isHidden = true;
        zipcodeTextBox.isHidden = true;
        buyNowBtn.isHidden = true;
        statePicker.isHidden = false;
    }
    @IBAction func buyNowBtnPressed(_ sender: Any) {
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row];
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true;
        countryLabel.isHidden = false;
        countryTextField.isHidden = false;
        zipcodeLabel.isHidden = false;
        zipcodeTextBox.isHidden = false;
        buyNowBtn.isHidden = false;
    }
}

