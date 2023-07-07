//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Yeider Juarez on 7/7/23.
//

import Foundation
//will be using this file whenever we make a request to the api
//@frozen:
//has a raw value of type string... when calling char case it spits out a string
/// represents unique api endpoints
@frozen enum RMEndpoint: String{
    /// endpoint to get character info
    case character
    /// endpoint to get location info
    case location
    /// endpoint to get episode info
    case episode
}
