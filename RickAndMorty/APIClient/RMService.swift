//
//  RMService.swift
//  RickAndMorty
//
//  Created by Yeider Juarez on 7/7/23.
//

import Foundation
/// Primary  API service object to get Rick and Morty data
final class RMService{
    //singleton can be accesssed from anywhere in the WHOLE app
    ///Shared singleton instance
    static let shared = RMService()
    //privatize initializer so that everyone is forced to use shared instance above
    ///Privatized constructor
    private init() {}
    
    /// Send Rick and Morty API call
    /// - Parameters:
    ///   - request: request instance
    ///   - completion: callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void){
        
    }
}
