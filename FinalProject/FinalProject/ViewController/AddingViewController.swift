////
////  AddingViewController.swift
////  FinalProject
////
////  Created by Demeuov Daulet on 23.04.2018.
////  Copyright © 2018 Daulet Demeuov. All rights reserved.
////
//
//import UIKit
//import SafariServices
//
//class ViewController: UIViewController {
//
//    @IBOutlet weak var tableView: UITableView!
//    @IBOutlet weak var addVideoTextField: UITextField!
//
//    var videos: [String] = ["Facebook Interview 3",
//                            "iOS Podcasts",
//                            "UIButton Animations"]
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        tableView.tableFooterView = UIView(frame: CGRect.zero)
//    }
//
//
//    @IBAction func addButtonTapped(_ sender: YTRoundedButton) {
//        insertNewVideoTitle()
//    }
//
//
//    func insertNewVideoTitle() {
//
//        if addVideoTextField.text!.isEmpty {
//            print("Add Video Text Field is empty")
//        }
//
//        videos.append(addVideoTextField.text!)
//
//        let indexPath = IndexPath(row: videos.count - 1, section: 0)
//
//        tableView.beginUpdates()
//        tableView.insertRows(at: [indexPath], with: .automatic)
//        tableView.endUpdates()
//
//        addVideoTextField.text = ""
//        view.endEditing(true)
//    }
//}
//
//
//extension ViewController: UITableViewDelegate, UITableViewDataSource {
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return videos.count
//    }
//
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let videoTitle = videos[indexPath.row]
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
//        cell.videoTitle.text = videoTitle
//
//        return cell
//    }
//
//
//    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//        return true
//    }
//
//
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//
//        if editingStyle == .delete {
//            videos.remove(at: indexPath.row)
//
//            tableView.beginUpdates()
//            tableView.deleteRows(at: [indexPath], with: .automatic)
//            tableView.endUpdates()
//        }
//    }
//}
