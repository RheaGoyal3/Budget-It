import UIKit

class ViewController: UIViewController {
    
    //declaring variables
   var totalFood: Int = 0
    var totalMisc: Int = 0
    var totalEnt: Int = 0
    var totalTravel: Int = 0
    var opt: Int = 0
    @IBOutlet weak var foodButton: UIButton!
    @IBOutlet weak var travelButton: UIButton!
    @IBOutlet weak var entButton: UIButton!
    @IBOutlet weak var miscButton: UIButton!
    
   
    @IBAction func onClick(_ sender: UIButton) {
        switch sender {
        case foodButton:
            show(opt: 1)
            
        case travelButton:
            show(opt: 2)
        case entButton:
            show(opt: 3)
            
        case miscButton:
            show(opt: 4)
        default:
            print("Wrong Input");
        }
    }
    
    
    //alert dialogue
    func show(opt: Int) {
    let foodAlert = UIAlertController(title: "Would you like to view or add an expense?", message:nil, preferredStyle: .alert)
        
        foodAlert.addAction(UIAlertAction(title: "View",style: .default,handler: { (action: UIAlertAction!) in
            var a: String;
            a = "Total Money Spent On "
            
            //checks which option was selected
            switch opt{
                
                //case for food
            case 1:
                let xNSNumber = self.totalFood as NSNumber
                let xString : String = xNSNumber.stringValue
                a = a + "Food: $" + xString
                
                //case for travel
            case 2:
                let xNSNumber = self.totalTravel as NSNumber
                let xString : String = xNSNumber.stringValue
                a = a + "Travel: $" + xString
                
                
                //case for entertainment
            case 3:
                let xNSNumber = self.totalEnt as NSNumber
                let xString : String = xNSNumber.stringValue
                a = a + "Entertainment: $" + xString
                
                
                //case for misc
            case 4:
                let xNSNumber = self.totalMisc as NSNumber
                let xString : String = xNSNumber.stringValue
                a = "Miscellaneous Expense: $" + xString
             
                //error case
            default:
                let error = UIAlertController(title: "Error has occured", message:nil, preferredStyle: .alert)
                error.addAction(UIAlertAction(title: "Done",style: .default,handler:nil))
                self.present(error, animated: true)
            }//switch ends
            
            //printing alert dialog to view expenses
            let viewExp = UIAlertController(title: a, message: nil, preferredStyle: .alert)
            viewExp.addAction(UIAlertAction(title: "Done",style: .default,handler:nil))
            self.present(viewExp, animated:true)
         
            
        }))
        
        //add amount spent
        foodAlert.addAction(UIAlertAction(title: "Add",style: .default,handler: { (action: UIAlertAction!) in
            
            let add = UIAlertController(title: "How much did you spend?", message: nil, preferredStyle: .alert)
            add.addTextField(configurationHandler: { textField in
                textField.placeholder = "Add your value in $$ to the nearest dollar"
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
                //case for travel
                case 2:
                    self.totalTravel +=  e
                //case for entertainment
                case 3:
                    self.totalEnt +=  e
                //case for misc
                case 4:
                    self.totalMisc +=  e
                    
                //error case
                default:
                    let error = UIAlertController(title: "Error has occured", message:nil, preferredStyle: .alert)
                    error.addAction(UIAlertAction(title: "Done",style: .default,handler:nil))
                    self.present(error, animated: true)
                    
                }//switch ends
                
            })) //done field
            
            
            //displaying the add alert
            self.present(add, animated:true)
            
            
        }))
        
        //displays alert dialog: view or add
    self.present(foodAlert, animated:true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
