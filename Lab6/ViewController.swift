import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var num2TextField: UITextField!
    @IBOutlet weak var num1TextField: UITextField!
    @IBOutlet weak var segmentControl1: UISegmentedControl!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultLabel.text="El resultado"
    }

    @IBAction func calculePressed(_ sender: Any) {
        let selectedIndex=segmentControl1.selectedSegmentIndex
        print("Hemos seleccionado)\(selectedIndex)")
        let num1=Double(num1TextField.text!)!
        let num2=Double(num2TextField.text!)!
        
        if selectedIndex==0{
            let suma=num1+num2
            resultLabel.text="\(suma)"
        }else if selectedIndex==1{
            let resta=num1-num2
            resultLabel.text="\(resta)"
        }else if selectedIndex==2{
            let producto=num1*num2
           resultLabel.text="\(producto)"
        }else if selectedIndex==3{
            let dividir=num1/num2
           resultLabel.text="\(dividir)"
        }
    }
    
}

