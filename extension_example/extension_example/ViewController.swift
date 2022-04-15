

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mixButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let red : Int = 200
        let green : Int = 100
        let blue : Int = 50
        view.backgroundColor = UIColor(red: CGFloat(red)/255, green: CGFloat(green)/255, blue: CGFloat(blue)/255, alpha: 1.0)
        view.backgroundColor = UIColor(red: 160, green: 20, blue: 200)
        
    }


    @IBAction func btnMixClicked(_ sender: UIButton) {
        mixButton.mix()
    }
}

extension UIButton {
    
    func mix(){
        let mixAnim = CABasicAnimation(keyPath: "position")
        mixAnim.repeatCount = 50
        mixAnim.autoreverses = true
        mixAnim.duration = 0.05
        mixAnim.fromValue = CGPoint(x: self.center.x - 3.5, y: self.center.y - 0.5)
        mixAnim.toValue = CGPoint(x: self.center.x + 3.5, y: self.center.y + 0.5)
        layer.add(mixAnim, forKey: "position")
    }
    
}
extension UIColor{
    convenience init(red : Int, green : Int , blue : Int) {
        assert(red >= 0 && red <= 255, "Invalıd red value")
        assert(green >= 0 && green <= 255, "Invalıd green value")
        assert(blue >= 0 && blue <= 255, "Invalıd blue value")
        self.init(red : CGFloat(red)/255 , green : CGFloat(green)/255 , blue : CGFloat(blue)/255 , alpha: 1.0)
    }
}
