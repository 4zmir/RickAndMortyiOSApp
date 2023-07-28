//
//  RMEpisodes.swift
//  RickAndMorty
//
//  Created by Yeider Juarez on 7/6/23.
//

import Foundation

struct RMEpisode: Codable{
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}

