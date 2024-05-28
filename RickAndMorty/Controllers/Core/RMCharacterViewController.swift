//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Vivaswanth Kashyap on 5/28/24.
//

import UIKit

/// contorller to search and show characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
            
        )
        print(request.url)
    }
}
