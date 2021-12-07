//
//  ResultViewController.swift
//  ApiCall
//
//  Created by student on 11/17/21.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var ingrediant1: UILabel!
    @IBOutlet weak var ingrediant2: UILabel!
    
    @IBOutlet weak var ingrediant3: UILabel!
    
    @IBOutlet weak var ingrediant4: UILabel!
    
    @IBOutlet weak var instructions: UILabel!
    var ing1 : String?
    var ing2 : String?
    var ing3 : String?
    var ing4 : String?
    var instruction : String?
    override func viewDidLoad() {
        super.viewDidLoad()

        
        ingrediant1.text = ing1
        ingrediant2.text = ing2
        ingrediant3.text = ing3
        ingrediant4.text = ing4
        instructions.text = instruction
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
