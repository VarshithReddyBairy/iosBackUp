//
//  Drinks.swift
//  APICallDemo
//
//  Created by student on 11/17/21.
//

import Foundation
class Drinks{
struct Returned : Codable{
    var drinks : [Drink]
}

struct Drink : Codable{
    var strDrink : String
    var strIngredient1 : String
    var strIngredient2 : String
    var strIngredient3 : String
    var strIngredient4 : String
}
    
    var d : [Drink] = []
    
    func getData(completed : @escaping() -> ()){
        let url = URL(string: "https://www.thecocktaildb.com/api/json/v1/1/search.php?f=A")
        // we need to make the request to the url using the session
        // we got the data
        
        
        URLSession.shared.dataTask(with: url!) { data, response, error in
            if error == nil{
                do{
                    // after getting the data, it is in json format, so we need to decode it
                    print("1")
                    let returned  = try JSONDecoder().decode(Returned.self, from: data!)
                    print("2")
                    self.d =  returned.drinks
                    print("3")
                    DispatchQueue.main.async {
                        completed()
                    }
                }
                catch{
                    print("json error")
                }
            }
        }.resume()
    }
    
}
