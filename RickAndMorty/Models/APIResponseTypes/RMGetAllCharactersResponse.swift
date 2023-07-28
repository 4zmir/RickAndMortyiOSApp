//
//  RMGetCharactersResponse.swift
//  RickAndMorty
//
//  Created by Yeider Juarez on 7/8/23.
//

import Foundation

struct RMGetAllCharactersResponse: Codable{
    //this struct(s) can also be placed outside the RMGetAllCharactersResponse struct
    struct Info: Codable{
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    let info: Info
    let results: [RMCharacter]
}
