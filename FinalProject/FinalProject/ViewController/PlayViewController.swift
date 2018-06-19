//
//  PlayViewController.swift
//  FinalProject
//
//  Created by Demeuov Daulet on 22.04.2018.
//  Copyright © 2018 Daulet Demeuov. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var dota:[Player] = Array()
    
    var data = [
        [],
        ["G DeGea #1 Manchester $8.5", "G Johnson #45 Bristols $4.4", "D Ricardio #2 Chicago $5.1",
         "D Islamkhan #4 Kairat $6.6", "D Turan #5 Galatasaray $4.7", "D Kanatov #3 Kairat $3.7", "F Fredrich #10 Paris $5.2",
         "F Ronaldo #7 Madrid $7.7", "F Emre #9 Celta $6.5"]
    ]
    
    var p:Int!
    
    @IBOutlet weak var myPitch: UIView!
    @IBAction func segmentController(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            p = 0
            tableView.alpha = 0
            myPitch.alpha = 1
        }
        if sender.selectedSegmentIndex == 1{
            p = 1
            tableView.alpha = 1
            myPitch.alpha = 0
        }
        tableView.reloadData()
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "customCell")
        p = 0
        
        tableView.alpha = 0
        
//        insertData()
//        fetchData()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[p].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! TableViewCell
        let str = data[p][indexPath.row].components(separatedBy: " ")
        cell.customInit(position: str[0], player: str[1], number: str[2], team: str[3], price: str[4])
        return cell
    }
    
//    func insertData(){
//        let player1 = Player(context: context)
//
//        player1.name = "DeGea"
//        player1.number = "#1"
//        player1.pos = "G"
//        player1.team = "Manchester"
//        player1.price = "$8.5"
//
//        let player2 = Player(context: context)
//
//        player2.name = "Johnson"
//        player2.pos = "G"
//        player2.number = "#45"
//        player2.team = "Bristols"
//        player2.price = "$4.4"
//
//        appDelegate.saveContext()
//    }
//
//    func fetchData(){
//        do{
//            dota = try context.fetch(Player.fetchRequest())
//            for each  in dota{
//                print("Player: \(each.name!)")
//            }
//        } catch{
////            handle error
//        }
//    }

}
