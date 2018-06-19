//
//  ViewController.swift
//  Chat
//
//  Created by Demeuov Daulet on 06.03.2018.
//  Copyright © 2018 Demeuov Daulet. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(ViewController.handleLogin))
    }
    
    @objc func handleLogin(){
        let login = LoginViewController()
        present(login, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

