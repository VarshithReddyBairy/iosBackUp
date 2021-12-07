//
//  HerosStatsViewController.swift
//  APICallDemo
//
//  Created by student on 11/16/21.
//

import UIKit

class HerosStatsViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var primaryAttr: UILabel!
    @IBOutlet weak var attackType: UILabel!
    @IBOutlet weak var legs: UILabel!
    
    var hero : (HeroStats)?
    override func viewDidLoad() {
        super.viewDidLoad()

        name.text = hero?.localized_name
        primaryAttr.text = hero?.primary_attr
        attackType.text = hero?.attack_type
        legs.text = "\((hero?.legs)!)"
    }
    

    

}
