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
    
    enum RMServiceError: Error{
        case failedToCreateRequest
        case failedToGetData
    }
    /// Send Rick and Morty API call
    /// - Parameters:
    ///   - request: request instance
    ///   - type: The type of object we expect to get back
    ///   - completion: callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void){
        
            
            guard let urlRequest = self.request(from: request) else{
                completion(.failure(RMServiceError.failedToCreateRequest))
                return
            }
            let task = URLSession.shared.dataTask(with: urlRequest){ data, _, error in
                guard let data = data, error == nil
                else{
                    completion(.failure(error ?? RMServiceError.failedToGetData))
                    return
                }
                //Decode response
                do{
                    let result = try JSONDecoder().decode(type.self, from: data)
                    completion(.success(result))
                }
                catch{
                    completion(.failure(error))
                }
            }
            task.resume()
    }
    
    // MARK: - Private
    private func request(from rmRequest: RMRequest) -> URLRequest?{
        //url used by rmRequest is the public var created in RMRequest.swift
        guard let url = rmRequest.url else {return nil}
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        
        
        return request
    }
}
