//
//  RegisterViewController.swift
//  Chat
//
//  Created by Sara Sipione on 27/11/2019.
//  Copyright © 2019 Sara Sipione. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                    //manage error (pop up for user)
                    //add a red label
                } else {
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
        }
    }
}
