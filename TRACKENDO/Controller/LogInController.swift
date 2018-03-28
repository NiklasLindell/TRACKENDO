//
//  LogInController.swift
//  TRACKENDO
//
//  Created by Niklas Lindell on 2018-03-23.
//  Copyright © 2018 Niklas Lindell. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class LogInController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func ForgotPW(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func logInPressed(_ sender: UIButton) {
        
        SVProgressHUD.show()
        
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            if error != nil {
                SVProgressHUD.dismiss()
                self.createAlertLogIn(title: "Try again!", message: "Wrong Password.")
                print(error!)
            }
            else {
                SVProgressHUD.dismiss()
                print("Login In Successful")
                self.performSegue(withIdentifier: "goToList", sender: self)
            }
        }
    }
    
    func createAlertLogIn(title: String, message:String ){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {(action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
}
