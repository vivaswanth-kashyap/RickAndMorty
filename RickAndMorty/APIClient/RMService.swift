//
//  RMService.swift
//  RickAndMorty
//
//  Created by Vivaswanth Kashyap on 5/28/24.
//

import Foundation

/// Primary Api sevrice object to rick and morty data
final class RMService{
    ///shared singleton instance
    static let shared = RMService()
    
    /// privatized constructor
    private init(){}
    
    
    ///send rick and morty API call
    /// - Parameters:
    ///     - request:  Request instance
    ///     - completion: Callback with data  or error
    public func execute(_ request: RMRequest, completion:@escaping ()->Void){
        
    }
}
