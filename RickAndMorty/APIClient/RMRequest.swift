//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Vivaswanth Kashyap on 5/28/24.
//

import Foundation

/// object that represents a single API call
final class RMRequest{
    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired Endpoint
    private let endpoint: RMEndpoint
    
    /// Path Components for API, if any
    private let pathComponents: Set<String>
    
    /// Query Arguments for the API, if any
    private let queryParameters: [URLQueryItem]
    
    
    /// Constructed url for the API request in string format
    private var urlString: String{
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty{
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        if !queryParameters.isEmpty{
            string += "?"
            //name=value&name=value
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    /// Computed and constructed API url
    public var url: URL?{
        return URL(string: urlString)
    }
    
    
    /// Desired http method
    public let httpMethod = "GET"
    
    // MARK: - Public
    
    /// Constructor reuqest
    /// - Parameters:
    ///     - endpoint: Target Endpoint
    ///     - pathComponents: Collection of Path Components
    ///     - queryParameters: Collection of query params
    
    public init(
        endpoint: RMEndpoint,
        pathComponents: Set<String> = [],
        queryParameters: [URLQueryItem]=[]
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
