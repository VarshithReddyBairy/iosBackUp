//
//  HeroStats.swift
//  APICallDemo
//
//  Created by student on 11/16/21.
//

import Foundation

//codable : used to convert data that we get from URL to actual class or struct
struct HeroStats : Codable{
    var localized_name :String
    let primary_attr : String
    let attack_type : String
    let legs : Int
}
