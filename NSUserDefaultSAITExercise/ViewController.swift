//
//  ViewController.swift
//  NSUserDefaultSAITExercise
//
//  Created by Sophia Amin on 4/4/18.
//  Copyright © 2018 Sophia Amin. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITextFieldDelegate{
    
    //MARK: Properties
    @IBOutlet weak var numOneTextField: UITextField!
    @IBOutlet weak var calculatorLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var numTwoTextField: UITextField!
    
    @IBOutlet weak var nameTextField: UITextField!

    var name:String? = ""
    var calculated:Int? = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //handle the text field inputs through delegate callbacks
        numOneTextField.delegate = self
        numTwoTextField.delegate = self
        nameTextField.delegate = self

        setupCoreData()

    }

    //MARK: Actions

    @IBAction func calculatePressed(_ sender: UIButton) {
        //get values from the text fields and add
        let numOne:Int? = Int(numOneTextField.text!)
        let numTwo:Int? = Int(numTwoTextField.text!)
        if ((numOne != nil) && (numTwo != nil)) {
        calculated = numOne! + numTwo!
        UserDefaults.standard.set(calculated, forKey: "Calculated")  //Integer
        } else {
            print("Not a valid input")
        }
    }
    @IBAction func enterNamePressed(_ sender: UIButton) {
        if (nameTextField.text != nil) {
            //save to core data
        } else {
            print("Not a valid input")
        }
    }
    
    //MARK: UITextFieldDelegate
    //first response removed on return key press
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    //MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }
    
    private func setupCoreData(){
        //reference to persistent container
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "EnteredString", in: context)
        let newUser = NSManagedObject(entity: entity!, insertInto: context)
        newUser.setValue("Default Name", forKey: "name")
        do {
            try context.save()
            print("Save successful!")
        } catch {
            print("Failed saving")
        }
    }

}

