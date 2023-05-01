//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Imalka Muthukumara on 2023-04-23.
//

import UIKit


/// controller to show and search for Characters
final class RMCharacterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(
            endPoint: .character,
            pathComponents: ["1"],
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        
        print(request.url!)
        
        RMService.shared.execute(request, expecting: RMCharacter.self, completion: { result in
           
        })
    }
    
}
