//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Vivaswanth Kashyap on 5/28/24.
//

import Foundation


struct RMLocation: Codable{
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
