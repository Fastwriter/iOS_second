//
//  ResultViewController.swift
//  FinalProject
//
//  Created by Demeuov Daulet on 22.04.2018.
//  Copyright © 2018 Daulet Demeuov. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        webView.loadRequest(URLRequest(url: URL(fileURLWithPath: Bundle.main.path(forResource: "htmlCode", ofType: "html")!)))
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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