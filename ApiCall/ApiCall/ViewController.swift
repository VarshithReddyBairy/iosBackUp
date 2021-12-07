//
//  ViewController.swift
//  ApiCall
//
//  Created by student on 11/17/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let drinks = Drinks()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        drinks.d.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = drinks.d[indexPath.row].strDrink
        return cell
    }
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        drinks.getData {
            self.tableView.reloadData()
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition =  segue.identifier
        if transition == "showDetails"{
            let destination = segue.destination as! ResultViewController
            destination.ing1 = drinks.d[(tableView.indexPathForSelectedRow?.row)!].strIngredient1
            destination.ing2 = drinks.d[(tableView.indexPathForSelectedRow?.row)!].strIngredient2
            destination.ing3 = drinks.d[(tableView.indexPathForSelectedRow?.row)!].strIngredient3
            destination.ing4 = drinks.d[(tableView.indexPathForSelectedRow?.row)!].strIngredient4
            destination.instruction = drinks.d[(tableView.indexPathForSelectedRow?.row)!].strInstructions
            
        }
    }
}

