//
//  FirstViewController.swift
//  Assignment2
//
//  Created by Brandon E Fish on 2018-02-07.
//  Copyright © 2018 Brandon E Fish. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.factionImage.image = UIImage(named:"wow")
        self.factionInfo.text = factionPageInfo
        
        view.theme_backgroundColor = GlobalPicker.backgroundColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBOutlet weak var factionButton: UISegmentedControl!
    
    @IBOutlet weak var factionImage: UIImageView!
    
   
    @IBOutlet weak var factionInfo: UITextView!
    
    let allianceInfo = "The Alliance (aka Grand Alliance) is one of two major political factions of the mortal races in Azeroth, its counterpart being the Horde. The Alliance consists of powerful cultures and groups bound not by desperation or necessity, but by their deep commitments to abstract concepts like nobility and honor."
    
    let hordeInfo = "The Horde is one of the two major political factions of the mortal races in Azeroth, its counterpart being the Alliance. The Horde, a faction founded by orcish immigrants from Draenor, has survived in the hostile world of Azeroth by forging alliances (some trusting, some less so) with local races such as the tauren people, the trolls, and the undead of the Forsaken."
    
    let factionPageInfo = "Welcome to the World of Warcraft Info application. This app provides you with information about the various classes and factions in World of Warcraft."

    
    

    @IBAction func factionButtonPressed(_ sender: UISegmentedControl)
    {
        switch factionButton.selectedSegmentIndex
        {
        case 0:
            factionImage.image = UIImage (named: "horde")
            factionInfo.text = hordeInfo
        case 1:
            factionImage.image = UIImage(named: "alliance")
            factionInfo.text = allianceInfo
        default:
            factionImage.image = UIImage(named: "wow")
            factionInfo.text = factionPageInfo
        }
        
    }
}

