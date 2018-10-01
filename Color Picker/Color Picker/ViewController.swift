//
//  ViewController.swift
//  Color Picker
//
//  Created by Akrum Mahmud on 10/1/18.
//  Copyright © 2018 Akrum Mahmud. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var labelView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pickerView.dataSource = self;
        self.pickerView.delegate = self;
        self.view.backgroundColor = UIColor.red;
        labelView.text = "Red"
    }
    
    let colors = ["Red","Orange","Yellow","Green","Blue","Purple"]

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(row == 0)
        {
            self.view.backgroundColor = UIColor.red;
            labelView.text = "Red"
        }
        else if(row == 1)
        {
            self.view.backgroundColor = UIColor.orange;
            labelView.text = "Orange"
        }
        else if(row == 2)
        {
            self.view.backgroundColor =  UIColor.yellow;
            labelView.text = "Yellow"
        }
        else if(row == 3)
        {
            self.view.backgroundColor = UIColor.green;
            labelView.text = "Green"
        }
        else if(row == 4)
        {
            self.view.backgroundColor =  UIColor.blue;
            labelView.text = "Blue"
        }
        else
        {
            self.view.backgroundColor =  UIColor.purple;
            labelView.text = "Purple"
        }
    }

}

