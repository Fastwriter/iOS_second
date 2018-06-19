//
//  LoggedViewController.swift
//  FinalProject
//
//  Created by Demeuov Daulet on 20.04.2018.
//  Copyright © 2018 Daulet Demeuov. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoggedViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBAction func logoutTapped(_ sender: UIButton) {
        do{
            try Auth.auth().signOut()
            
            dismiss(animated: true, completion: nil)
            
        } catch{
            print("There was a error with logout")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://ru.uefa.com/futsaleuro/")
        let requestObj = URLRequest(url: url!)
        webView.loadRequest(requestObj)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
