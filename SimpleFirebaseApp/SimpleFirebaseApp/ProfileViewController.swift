//
//  ProfileViewController.swift
//  SimpleFirebaseApp
//
//  Created by Darkhan on 02.04.18.
//  Copyright © 2018 SDU. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
import FirebaseDatabase
class ProfileViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    private var tweets: [Tweet] = []
    private var dbRef: FIRDatabaseReference?
    var current_user_email = {
        return FIRAuth.auth()?.currentUser?.email
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = current_user_email()
        dbRef = FIRDatabase.database().reference()
        dbRef = dbRef?.child("tweets")
        // Do any additional setup after loading the view.
        dbRef?.observe(FIRDataEventType.value, with: { (snapshot) in
            print(snapshot.childrenCount)
            self.tweets.removeAll()
            for snap in snapshot.children{
                let tweet = Tweet.init(snapshot: snap as! FIRDataSnapshot)
                self.tweets.append(tweet)
            }
            
            self.tweets.reverse()
            self.tableView.reloadData()
        })
    }

    @IBAction func signoutPressed(_ sender: UIButton) {
        do{
        try FIRAuth.auth()?.signOut()
        }catch{
            
        }
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func composeButtonPressed(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "Add new Tweet", message: "What's up?", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Enter here"
        }
        let postAction = UIAlertAction(title: "Post", style: .default) { (_ ) in
            let tweet = Tweet.init(alertController.textFields![0].text!, self.current_user_email()!)
        self.dbRef?.childByAutoId().setValue(tweet.toJSONFormat())
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: {
            (action : UIAlertAction!) -> Void in })
        
        
        alertController.addAction(postAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tweets.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")
        cell?.textLabel?.text = tweets[indexPath.row].Content
        cell?.detailTextLabel?.text = tweets[indexPath.row].User_email
        if current_user_email() == tweets[indexPath.row].User_email{
            cell?.backgroundColor = UIColor.yellow
            
        }
        return cell!
    }
}
