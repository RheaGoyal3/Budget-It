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
    let foodAlert = UIAlertController(title: "Would you like to view or add an expense?", message:nil, preferredStyle: .alert)
        
        foodAlert.addAction(UIAlertAction(title: "View",style: .default,handler: { (action: UIAlertAction!) in
            switch opt{
                //case for food
            case 1:
                let food = UIAlertController(title: "Total expense on food: ", message: nil, preferredStyle: .alert)
                food.addAction(UIAlertAction(title: "Done",style: .default,handler:nil))
                self.present(food, animated:true)
                
                //case for travel
            case 2:
                let travel = UIAlertController(title: "Total expense on travel", message:nil, preferredStyle: .alert)
                travel.addAction(UIAlertAction(title: "Done",style: .default,handler:nil))
                self.present(travel, animated:true)
                
                //case for entertainment
            case 3:
                let enter = UIAlertController(title: "Total expense on entertainment", message:nil, preferredStyle: .alert)
                enter.addAction(UIAlertAction(title: "Done",style: .default,handler:nil))
                self.present(enter, animated:true)
                
                //case for misc
            case 4:
                let misc = UIAlertController(title: "Miscellaneous Expense: ", message:nil, preferredStyle: .alert)
                misc.addAction(UIAlertAction(title: "Done",style: .default,handler:nil))
                self.present(misc, animated:true)
                
                //error case
            default:
                let error = UIAlertController(title: "Error has occured", message:nil, preferredStyle: .alert)
                error.addAction(UIAlertAction(title: "Done",style: .default,handler:nil))
                self.present(error, animated: true)
            }
         
            
        }))
        
        foodAlert.addAction(UIAlertAction(title: "Add",style: .default,handler: { (action: UIAlertAction!) in
            let add = UIAlertController(title: "How much did you spend?", message: nil, preferredStyle: .alert)
            add.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            
            add.addTextField(configurationHandler: { textField in
                textField.placeholder = "Add your value in $$"
            })
            self.present(add, animated:true)
            
            switch opt{
            //case for food
            case 1:
                self.totalFood +=  1
                print(self.totalFood)
                
            //case for travel
            case 2:
                self.totalTravel+=1
                
            //case for entertainment
            case 3:
                self.totalEnt+=1
                
            //case for misc
            case 4:
                self.totalMisc+=1
            //error case
            default:
                let error = UIAlertController(title: "Error has occured", message:nil, preferredStyle: .alert)
                error.addAction(UIAlertAction(title: "Done",style: .default,handler:nil))
                self.present(error, animated: true)
                
                
            }//switch ends
            
            
        }))
        
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
