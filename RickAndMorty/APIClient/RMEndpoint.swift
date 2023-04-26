//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Imalka Muthukumara on 2023-04-26.
//

import Foundation


/// Represents unique API Endpoint
@frozen enum RMEndpoint: String{
    /// endpoint to get character info
    case character
    /// endpoint to get location info
    case location
    /// endpoint to get episode info
    case episode
}
