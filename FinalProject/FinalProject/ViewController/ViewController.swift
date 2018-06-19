//
//  ViewController.swift
//  FinalProject
//
//  Created by Demeuov Daulet on 20.04.2018.
//  Copyright © 2018 Daulet Demeuov. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var register: UIButton!
    @IBOutlet weak var forgetPass: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        register.alpha = 0
        forgetPass.alpha = 0
        initialPos()
        
        UIView.animate(withDuration: 1, animations: {
            self.icon.center.y += 207
            self.login.center.y -= 277
        })
        UIView.animate(withDuration: 2.5, animations: {
            self.loginTextField.center.x = self.view.frame.width/2
            self.passwordTextField.center.x = self.view.frame.width/2
        }) { (true) in
            UIView.animate(withDuration: 1, animations: {
                self.forgetPass.alpha=1
                self.register.alpha=1
            })

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil {
            self.presentLoggedInScreen()
        }
    }
    
    @IBAction func loginTapped(_ sender: UIButton) {
        if let login = loginTextField.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: login, password: password, completion:{ (user, error) in
                if error != nil {
                    let alert = UIAlertController(title: "Error!", message: "Incorrect login or password or user isn't registered", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                    return
                }
                self.presentLoggedInScreen()
            })
        }
    }
    
    @IBAction func registerTapped(_ sender: UIButton) {
        
    }
    
    func presentLoggedInScreen(){
        let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let TabInVC:TAbBarViewController = storyboard.instantiateViewController(withIdentifier: "mainTabVC") as! TAbBarViewController
        self.present(TabInVC, animated: true, completion: nil)
    }
    func initialPos(){
        loginTextField.center.x = -200
        passwordTextField.center.x = view.frame.width + 200
        icon.center.y = 0
        login.center.y = view.frame.height
    }
}

