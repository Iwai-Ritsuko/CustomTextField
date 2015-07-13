//
//  ViewController.swift
//  CustomTextField
//
//  Created by Iwai Ritsuko on 2015/7/13.
//  Copyright (c) 2015年 RiccaLokka. All rights reserved.
//

import UIKit

class ViewController: UIViewController, RLTextFieldDelegate {
    @IBOutlet weak var column1 : RLTextField!
    @IBOutlet weak var column2 : RLTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        column1.textFieldDelegate = self
        
        column2.textFieldDelegate = self
        column2.limitCount = 10
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func viewDidTapped() {
        self.view.endEditing(true)
    }
}

