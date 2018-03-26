//
//  SignUpViewController.swift
//  TRACKENDO
//
//  Created by Niklas Lindell on 2018-03-23.
//  Copyright © 2018 Niklas Lindell. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController{
    
    @IBOutlet weak var emailTextField: UITextField!
    
   @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signUpPressed(_ sender: UIButton) {
        
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            if error != nil {
                print(error!)
            }
            else {
                print("Sign Up Seccesfull")
                self.performSegue(withIdentifier: "goToList", sender: self)
            }
        }
        
        
    }
    
    
}
