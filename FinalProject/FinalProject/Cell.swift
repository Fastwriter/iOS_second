//
//  Cell.swift
//  FinalProject
//
//  Created by Demeuov Daulet on 22.04.2018.
//  Copyright © 2018 Daulet Demeuov. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {
    
    @IBOutlet weak var Pos: UILabel!
    @IBOutlet weak var Player: UILabel!
    @IBOutlet weak var Number: UILabel!
    @IBOutlet weak var Team: UILabel!
    @IBOutlet weak var Price: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
