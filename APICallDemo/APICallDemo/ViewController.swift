//
//  ViewController.swift
//  APICallDemo
//
//  Created by student on 11/16/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
   let drinks = Drinks()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        drinks.d.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = drinks.d[indexPath.row].strDrink
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "showDetails" {
            let destination = segue.destination as! HerosStatsViewController
            //destination.hero = d[(tableView.indexPathForSelectedRow?.row)!]
        }
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        drinks.getData {
            self.tableView.reloadData()
        }
        tableView.delegate = self
        tableView.dataSource = self
    }
    //download or get the json data
    
}

