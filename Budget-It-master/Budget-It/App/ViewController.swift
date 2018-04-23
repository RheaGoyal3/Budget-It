import UIKit

class ViewController: UIViewController {
    
    //declaring variables
   var totalFood: Int = 0
    var totalMisc: Int = 0
    var totalEnt: Int = 0
    var totalTravel: Int = 0
    var opt: Int = 0
    var total: Int = 0

    @IBOutlet weak var foodButton: UIButton!
    @IBOutlet weak var travelButton: UIButton!
    @IBOutlet weak var entButton: UIButton!
    @IBOutlet weak var miscButton: UIButton!
    
   
    @IBAction func onClick(_ sender: UIButton) {
        switch sender {
        case foodButton:
            print("Food");
            show(opt: 1)
            
        case travelButton:
            print("Travel");
            show(opt: 2)
        case entButton:
            print("Entertainment");
            show(opt: 3)
            
        case miscButton:
            print("Misc");
            show(opt: 4)
        default:
            print("Wrong Input");
        }
    }
    
    
    //alert dialogue
    func show(opt: Int) {
    
      
            
            let add = UIAlertController(title: "How much did you spend?", message: nil, preferredStyle: .alert)
            add.addTextField(configurationHandler: { textField in
                textField.placeholder = "Add your value in $$$ to the nearest dollar"
            })
            
            add.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            
            add.addAction(UIAlertAction(title: "Done", style: .default, handler: { (action: UIAlertAction!) in
                //get input as string and convert to int
                var exp: String
                exp = add.textFields![0].text!;
                let e = (exp as NSString).integerValue
                
                
                switch opt{
                //case for food
                case 1:
                    self.totalFood +=  e
                    self.total += e
                //case for travel
                case 2:
                    self.totalTravel +=  e
                    self.total += e
                //case for entertainment
                case 3:
                    self.totalEnt +=  e
                    self.total += e
                //case for misc
                case 4:
                    self.totalMisc +=  e
                    self.total += e
                    
                //error case
                default:
                    let error = UIAlertController(title: "Error has occured", message:nil, preferredStyle: .alert)
                    error.addAction(UIAlertAction(title: "Done",style: .default,handler:nil))
                    self.present(error, animated: true)
                    
                }//switch ends
                
            })) //done field
            
            
            //displaying the add alert
            self.present(add, animated:true)
            
            
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let DestViewController : _ViewController = segue.destination as! _ViewController
       let xNSNumber = self.totalFood as NSNumber
        let xString : String = xNSNumber.stringValue
        var a = String()
        a = a + "$" + xString
        DestViewController.foodText = a
    
    let xNSNumber1 = self.totalTravel as NSNumber
    let xString1 : String = xNSNumber1.stringValue
    var t = String()
    t = t + "$" + xString1
    DestViewController.travelText = t
    
    let xNSNumber2 = self.totalEnt as NSNumber
    let xString2 : String = xNSNumber2.stringValue
    var e = String()
    e = e + "$" + xString2
    DestViewController.entText = e
    
    let xNSNumber3 = self.totalMisc as NSNumber
    let xString3 : String = xNSNumber3.stringValue
    var m = String()
    m = m + "$" + xString3
    DestViewController.miscText = m
    
    
    let xNSNumber4 = self.total as NSNumber
    let xString4 : String = xNSNumber4.stringValue
    var g = String()
    g = g + "$" + xString4
    DestViewController.totalText = g
        
    }
    
    
}
