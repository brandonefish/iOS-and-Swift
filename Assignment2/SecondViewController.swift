//
//  SecondViewController.swift
//  Assignment2
//
//  Created by Brandon E Fish on 2018-02-07.
//  Copyright © 2018 Brandon E Fish. All rights reserved.
//

import UIKit
import AVFoundation
import Pods_Assignment2

class SecondViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareSong()
        songPlayer.play()
        
        tableView.theme_backgroundColor = GlobalPicker.backgroundColor
        tableView.theme_separatorColor = ["#C6C5C5", "#C6C5C5", "#C6C5C5", "#ECF0F1"]
        
        musicLabel.theme_textColor = GlobalPicker.textColor
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var musicLabel: UILabel!
    

    @IBOutlet weak var mySwitch: UISwitch!
    
    
        

    
    
    var songPlayer = AVAudioPlayer()
    
    func prepareSong(){
        do{
            songPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "music", ofType: "m4a")!))
            
            songPlayer.prepareToPlay()
            
            let audioSession = AVAudioSession.sharedInstance()
            do{
                try audioSession.setCategory(AVAudioSessionCategoryPlayback)
            }catch let sessionError{
                print(sessionError)
            }
        }catch let songPlayerError{
            print(songPlayerError)
        }
    }
    
    
    @IBAction func musicSwitch(_ sender: UISwitch) {
        if mySwitch.isOn{
            songPlayer.play()
            musicLabel.text = "Music: On"
        }else{
            songPlayer.stop()
            musicLabel.text = "Music: Off"
        }
    }
    
    
    @IBAction func defaultButtonPressed(_ sender: UIButton)
    {
        let controller = UIAlertController(title: "Restore Default Settings?", message:nil, preferredStyle: .actionSheet)
        
        let yesAction = UIAlertAction (title: "Yes", style: .destructive, handler:
        {action in
            let msg = "Settings have been restored to their defaults."
            let controller2 = UIAlertController(title:"Restore Defaults", message: msg, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "Back", style: .cancel, handler: nil)
            controller2.addAction(cancelAction)
            self.present(controller2, animated: true, completion: nil)
        })
        
        let noAction = UIAlertAction(title: "No", style: .cancel, handler: nil)
        
        controller.addAction(yesAction)
        controller.addAction(noAction)
        
        
        
        if let ppc = controller.popoverPresentationController{
            ppc.sourceView = sender
            ppc.sourceRect = sender.bounds
        }
        present(controller, animated: true, completion: nil)
        
        
    }
    
    // CHANGE THEME
    
    
}

