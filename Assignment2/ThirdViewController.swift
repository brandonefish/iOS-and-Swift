//
//  ThirdViewController.swift
//  Assignment2
//
//  Created by Brandon on 2018-02-04.
//  Copyright © 2018 Brandon E Fish. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.theme_backgroundColor = GlobalPicker.backgroundColor
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBOutlet weak var classSelector: UIPickerView!
    
    
    
    @IBOutlet weak var classImage: UIImageView!
    
    
    @IBOutlet weak var classInfo: UITextView!
    
    
    var classImages: [UIImage] = [
        UIImage(named: "WarriorClass.png")!,
        UIImage(named: "PaladinClass.png")!,
        UIImage(named: "HunterClass.png")!,
        UIImage(named: "RogueClass.png")!,
        UIImage(named: "PriestClass.png")!,
        UIImage(named: "DeathKnightClass.png")!,
        UIImage(named: "ShamanClass.png")!,
        UIImage(named: "MageClass.png")!,
        UIImage(named: "WarlockClass.png")!,
        UIImage(named: "MonkClass.png")!,
        UIImage(named: "DruidClass.png")!,
        UIImage(named: "DemonHunterClass.png")!,
        ]
    
    let classes = ["Warrior", "Paladin", "Hunter", "Rogue", "Priest", "Death Knight", "Shaman", "Mage", "Warlock", "Monk", "Druid", "Demon Hunter"]
    
    let classInformation = ["Warriors equip themselves carefully for combat and engage their enemies head-on, letting attacks glance off their heavy armor. They use diverse combat tactics and a wide variety of weapon types to protect their more vulnerable allies. Warriors must carefully master their rage – the power behind their strongest attacks – in order to maximize their effectiveness in combat.", "Paladins stand directly in front of their enemies, relying on heavy armor and healing in order to survive incoming attacks. Whether with massive shields or crushing two-handed weapons, Paladins are able to keep claws and swords from their weaker fellows – or they use healing magic to ensure that they remain on their feet.", "Hunters battle their foes at a distance, commanding their pets to attack while they nock their arrows and fire their guns. Though their missile weapons are effective at short and long ranges, hunters are also highly mobile. They can evade or restrain their foes to control the arena of battle.", "Rogues often initiate combat with a surprise attack from the shadows, leading with vicious melee strikes. When in protracted battles, they utilize a successive combination of carefully chosen attacks to soften the enemy up for a killing blow. Rogues must take special care when selecting targets so that their combo attacks are not wasted, and they must be conscious of when to hide or flee if a battle turns against them.", "Priests use powerful healing magic to fortify themselves and their allies. They also wield powerful offensive spells from a distance, but can be overwhelmed by enemies due to their physical frailty and minimal armor. Experienced priests carefully balance the use of their offensive powers when tasked with keeping their party alive.", "Death Knights engage their foes up-close, supplementing swings of their weapons with dark magic that renders enemies vulnerable or damages them with unholy power. They drag foes into one-on-one conflicts, compelling them to focus their attacks away from weaker companions. To prevent their enemies from fleeing their grasp, death knights must remain mindful of the power they call forth from runes, and pace their attacks appropriately.", "During combat, shaman place damaging and controlling totems on the ground to maximize their effectiveness while hindering their enemies. Shaman are versatile enough to battle foes up close or at range, but wise shaman choose their avenue of attack based on their enemies’ strengths and weaknesses.", "Mages demolish their foes with arcane incantations. Although they wield powerful offensive spells, mages are fragile and lightly armored, making them particularly vulnerable to close-range attacks. Wise mages make careful use of their spells to keep their foes at a distance or hold them in place.", "Warlocks burn and destroy weakened foes with a combination of crippling illnesses and dark magic. While their demon pets protect and enhance them, warlocks strike at their enemies from a distance. As physically weak spellcasters bereft of heavy armor, cunning warlocks allow their minions to take the brunt of enemy attacks in order to save their own skin.", "Whatever their combat role, monks rely mainly on their hands and feet to do the talking, and on strong connection with their inner chi to power their abilities. Abilities such as Expel Harm and Chi Wave both heal their allies while at the same time damaging their enemies.", "Druids are versatile combatants, in that they can fulfill nearly every role – healing, tanking, and damage dealing. It’s critical that druids tailor the form they choose to the situation, as each form bears a specific purpose.", "Forgoing heavy armor, Demon Hunters capitalize on speed, closing the distance quickly to strike enemies with one-handed weapons. However, Illidari must also use their agility defensively to ensure that battles end favorably."]
    
    // Picker Code
    
    
    @IBAction func onButtonPressed(_ sender: Any)
    {
        let row = classSelector.selectedRow(inComponent: 0)
        
        
        classInfo.text = classInformation[row]
        classImage.image = classImages[row]
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return classes.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return classes[row]
    }
    
    
}
