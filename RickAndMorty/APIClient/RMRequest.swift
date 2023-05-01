//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Imalka Muthukumara on 2023-04-26.
//

import Foundation

/// Objects that represnts a single API call
final class RMRequest{
    
    /// API constants
    private struct Constants{
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired end point
    private let endPoint:RMEndpoint
    
    /// Path components if any
    private let pathComponents:Set<String>
    
    /// Query arguments for API, if any
    private let queryParameters:[URLQueryItem]
    
    /// Constructed URL for the API request in string format
    private var urlString: String{
        var string = Constants.baseUrl
        string += "/"
        string += endPoint.rawValue
        
        if !pathComponents.isEmpty{
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty{
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else{return nil}
                
                return "\($0.name)=\(value)"
                
            }).joined(separator: "&")
            
            string += argumentString
        }
        return string
    }
    
    ///  Computed and constructed URL
    public var url:URL?{
        return URL(string: urlString)
    }
    
    /// Desired HTTP method
    public let httpMethod = "GET"
    
    /// Construct request
    /// - Parameters:
    ///   - endPoint: Target endpoint
    ///   - pathComponents: Collection of oath components
    ///   - queryParameters: Collection of query parameters
    public init(
        endPoint: RMEndpoint,
        pathComponents: Set<String> = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endPoint = endPoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
}
