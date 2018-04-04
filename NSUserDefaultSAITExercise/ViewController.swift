//
//  ViewController.swift
//  NSUserDefaultSAITExercise
//
//  Created by Sophia Amin on 4/4/18.
//  Copyright © 2018 Sophia Amin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    
    //MARK: Properties
    @IBOutlet weak var numOneTextField: UITextField!
    
    @IBOutlet weak var numTwoTextField: UITextField!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    var calculated:Int? = 0
    var name:String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //handle the text field inputs through delegate callbacks
        numOneTextField.delegate = self
        numTwoTextField.delegate = self
        nameTextField.delegate = self
    }

    //MARK: Actions

    @IBAction func calculatePressed(_ sender: UIButton) {
        //get values from the text fields and add
    }
    @IBAction func enterNamePressed(_ sender: UIButton) {
    }
    
    //MARK: UITextFieldDelegate
    //first response removed on return key press
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
}

