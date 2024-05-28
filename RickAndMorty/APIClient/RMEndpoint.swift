//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Vivaswanth Kashyap on 5/28/24.
//

import Foundation



/// Represents unique API endpoint
@frozen enum RMEndpoint{
    /// Endpoint to get character info
    case character // "character"
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
