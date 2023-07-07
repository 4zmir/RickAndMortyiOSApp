//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Yeider Juarez on 7/6/23.
//

import Foundation
//can also use class
struct RMLocation: Codable{
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}

