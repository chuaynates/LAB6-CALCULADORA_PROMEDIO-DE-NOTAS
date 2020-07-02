import UIKit

class NewController: UIViewController {
    
    @IBOutlet weak var teo1TextField: UITextField!
    @IBOutlet weak var teo2TextField: UITextField!
    @IBOutlet weak var teo3TextField: UITextField!
    @IBOutlet weak var teo4TextField: UITextField!
    @IBOutlet weak var promAulaLabel: UILabel!
    
    @IBOutlet weak var lab1TextField: UITextField!
    @IBOutlet weak var lab2TextField: UITextField!
    @IBOutlet weak var lab3TextField: UITextField!
    @IBOutlet weak var lab4TextField: UITextField!
    @IBOutlet weak var nota5TextField: UITextField!
    @IBOutlet weak var lab6TextField: UITextField!
    @IBOutlet weak var promLabLabel: UILabel!
    
    @IBOutlet weak var resultNotaLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultNotaLabel.text="Nota final"
    }
    
    @IBAction func enviarPressed(_ sender: Any) {
        let teo1=Double(teo1TextField.text!)!
        let teo2=Double(teo2TextField.text!)!
        let teo3=Double(teo3TextField.text!)!
        let teo4=Double(teo4TextField.text!)!
        
        let notateo=(teo1+teo2+teo2+teo3+teo4)/4
        let teoValue=String(format:"%.1f",notateo)
        promAulaLabel.text="\(teoValue)"
        
        let lab1=Double(lab1TextField.text!)!
        let lab2=Double(lab2TextField.text!)!
        let lab3=Double(lab3TextField.text!)!
        let lab4=Double(lab4TextField.text!)!
        let lab5=Double(nota5TextField.text!)!
        let lab6=Double(lab6TextField.text!)!
        
        let notalab=(lab1+lab2+lab3+lab4+lab5+lab6)/6
        let labValue=String(format: "%.1f",notalab)
        promLabLabel.text="\(labValue)"
        
        let notafinal=(notateo+notalab)/2
        let notaValue=String(format: "%.2f", notafinal)
        resultNotaLabel.text="\(notaValue)"
        
    }
    
}
