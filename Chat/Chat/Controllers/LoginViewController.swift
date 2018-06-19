//
//  LoginViewController.swift
//  Chat
//
//  Created by Demeuov Daulet on 06.03.2018.
//  Copyright © 2018 Demeuov Daulet. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    let inputsContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.view.addSubview(inputsContainerView)
        self.view.addSubview(registerButtonView)
        
        setupInputsContainerViewConstraints()
        setupRegisterButtonViewConstraints()
        
        self.view.backgroundColor = UIColor(r: 25, g: 129, b: 46)
    }
    
    let registerButtonView: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Register", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = UIColor(r: 83, g: 156, b: 97)
        return btn
    }()
    
    let nameTextFilled: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Enter your name"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()

    func setupInputsContainerViewConstraints(){
        inputsContainerView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        inputsContainerView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        inputsContainerView.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: -24).isActive = true
        inputsContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        inputsContainerView.addSubview(nameTextFilled)
        
        nameTextFilled.topAnchor.constraint(equalTo: inputsContainerView.topAnchor).isActive = true
        nameTextFilled.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 8).isActive = true
        nameTextFilled.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        nameTextFilled.heightAnchor.constraint(equalTo: inputsContainerView.heightAnchor, multiplier: 1/3)
    }
    
    func setupRegisterButtonViewConstraints(){
        registerButtonView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        registerButtonView.topAnchor.constraint(equalTo: inputsContainerView.bottomAnchor, constant: 12).isActive = true
        registerButtonView.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        registerButtonView.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}
