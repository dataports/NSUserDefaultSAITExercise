//
//  NameViewController.swift
//  NSUserDefaultSAITExercise
//
//  Created by Sophia Amin on 4/5/18.
//  Copyright © 2018 Sophia Amin. All rights reserved.
//

import UIKit
import CoreData

class NameViewController: UIViewController {

    @IBOutlet weak var nameIntroLabel: UILabel!
    
    @IBOutlet weak var nameDisplayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCoreData()

        // Do any additional setup after loading the view.
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    

    
    
    public func setupCoreData(){
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
