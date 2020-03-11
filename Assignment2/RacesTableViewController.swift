//
//  RacesTableViewController.swift
//  Assignment2
//
//  Created by Brandon on 2018-03-14.
//  Copyright © 2018 Brandon E Fish. All rights reserved.
//

import UIKit

class RacesTableViewController : UITableViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.theme_backgroundColor = GlobalPicker.backgroundColor
        tableView.theme_separatorColor = ["#C6C5C5", "#C6C5C5", "#C6C5C5", "#ECF0F1"]
        
        
        // Do any additional setup after loading the view.
    }
    
    private let cellNames = ["Orc", "Troll", "Undead", "Tauren", "Blood Elf", "Goblin", "Pandaren", "Human", "Dwarf", "Gnome", "Night Elf", "Worgen", "Draenei"]
    let tableIdentifier = "TableIdentifier"
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellNames.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: tableIdentifier)
        if (cell == nil){
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: tableIdentifier)
        }
        
        cell?.textLabel?.text = cellNames[indexPath.row]
        return cell!
        }
    }
    

