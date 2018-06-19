//
//  RegisterViewController.swift
//  FinalProject
//
//  Created by Demeuov Daulet on 22.04.2018.
//  Copyright © 2018 Daulet Demeuov. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {

   
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createAccountTapped(_ sender: UIButton) {
        if let login = loginTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: login, password: password, completion: { user, error in
                if let firebaseError = error {
                    print(firebaseError.localizedDescription)
                    return
                }
            })
            dismiss(animated: true, completion: nil)
        }
    }
}
