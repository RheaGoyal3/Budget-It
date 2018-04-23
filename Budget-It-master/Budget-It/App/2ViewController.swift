//
//  2ViewController.swift
//  Budget-It
//
//  Created by Rhea on 23/04/18.
//  Copyright © 2018 Rhea. All rights reserved.
//

import UIKit

class _ViewController: UIViewController {

    
    @IBOutlet weak var food: UILabel!
    
    @IBOutlet weak var travel: UILabel!
    
    @IBOutlet weak var ent: UILabel!
    
    
    @IBOutlet weak var total: UILabel!
    
    @IBOutlet weak var misc: UILabel!
    
    @IBAction func back(_ sender: Any) {
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    var foodText = String()
    var travelText = String()
    var entText = String()
    var miscText = String()
    var totalText = String()
    
    
    
    override func viewDidLoad() {
        // Do any additional setup after loading the view.
        food.text = foodText
        travel.text = travelText
        ent.text = entText
        misc.text = miscText
        total.text = totalText
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
