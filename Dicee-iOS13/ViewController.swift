import UIKit

class ViewController: UIViewController {

    // IBOutLet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceArray = [
        "DiceOne",
        "DiceTwo",
        "DiceThree",
        "DiceFour",
        "DiceFive",
        "DiceSix",
    ]
    
    // IBAction allows me to reference a click in a button
    @IBAction func rollButtonAction(_ sender: Any) {
        let leftDice = diceArray.randomElement() ?? "DiceOne"
        let rightDice = diceArray.randomElement() ?? "DiceOne"
        
        diceImageView1.image = UIImage(imageLiteralResourceName: leftDice)
        diceImageView2.image = UIImage(imageLiteralResourceName: rightDice)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Change image value to another image in assets
        diceImageView1.image = UIImage(imageLiteralResourceName: "DiceSix")
        diceImageView2.image = UIImage(imageLiteralResourceName: "DiceTwo")
        
    }

}
