import UIKit

class SelectThemeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.theme_backgroundColor = GlobalPicker.backgroundColor
    }
    
    @IBAction func tapRed(_ sender: UIButton) {
        MyThemes.switchTo(theme: .red)
        
    }
 
    @IBAction func tapYellow(_ sender: UIButton) {
        MyThemes.switchTo(theme: .yello)    }
    

    
    @IBAction func tapBlue(_ sender: AnyObject) {
        MyThemes.switchTo(theme: .blue)
    }

}
