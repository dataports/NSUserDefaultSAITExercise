//
//  CheckValueViewController.swift
//  NSUserDefaultSAITExercise
//
//  Created by Sophia Amin on 4/4/18.
//  Copyright © 2018 Sophia Amin. All rights reserved.
//

import UIKit

class CheckValueViewController: UIViewController {
    //MARK: Properties
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var calculatedLabel: UILabel!
    
//    var numOne:String!
//    var numTwo:String!
   //  var calculatedVC2:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //change text based on the Calculated key UserDefault
        calculatedLabel.text = String(describing: UserDefaults.standard.integer(forKey: "Calculated"))

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

}
