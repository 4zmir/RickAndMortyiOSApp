//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Yeider Juarez on 7/6/23.
//

import Foundation
//codable lets you decode data that is received from an api call
struct RMCharacter: Codable{
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String
    let type: String
    let gender: RMCharacterGender
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
