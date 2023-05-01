//
//  RMService.swift
//  RickAndMorty
//
//  Created by Imalka Muthukumara on 2023-04-26.
//

import Foundation

/// our primaery API service object to get RickAndMorty Data
final class RMService{
    
    /// shared  singleton instance
    static let shared = RMService()
    
    
    /// privatized constructor
    private init(){}
    
    
    /// send Rick and Morty API call
    /// - Parameters:
    ///   - request: Request Instance
    ///   - completion: Callback with data or error
    public func execute<T:Codable>(
        _ request:RMRequest,
        expecting: T.Type,
        completion:@escaping (Result<T,Error>) -> Void
    ){
        
    }
}
