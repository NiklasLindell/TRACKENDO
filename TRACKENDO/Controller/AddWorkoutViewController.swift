//
//  AddWorkoutViewController.swift
//  TRACKENDO
//
//  Created by Niklas Lindell on 2018-03-24.
//  Copyright © 2018 Niklas Lindell. All rights reserved.
//

import UIKit

class AddWorkoutViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var exerciseTextField: UITextField!
    
    @IBOutlet weak var setTextField: UITextField!
    
    @IBOutlet weak var repsTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    


    @IBAction func savePressed(_ sender: UIButton) {
        if (titleTextField.text != nil) && titleTextField.text != "" {
            workoutList?.append(titleTextField.text!)
        }
        if (exerciseTextField.text != nil) && exerciseTextField.text != "" {
            workoutList?.append(exerciseTextField.text!)
        }
        if (setTextField.text != nil) && setTextField.text != "" {
            workoutList?.append(setTextField.text!)
        }
        if (repsTextField.text != nil) && repsTextField.text != "" {
            workoutList?.append(repsTextField.text!)
        }
    }
    
}
