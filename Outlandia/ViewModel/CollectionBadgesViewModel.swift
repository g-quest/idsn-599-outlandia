//
//  CollectionBadgesViewModel.swift
//  Outlandia
//
//  Created by Yuning Tang on 4/20/23.
//

import SwiftUI
import UIKit

class CollectionBadgesViewModel: ObservableObject {
    
    // MARK: - Connection to the Model
    
    @Published private var model: CollectionBadges = CollectionBadges()
    
    // MARK: - Public vars available to the View
    
    var badges: [CollectionBadge] {
        model.badges
    }
    
    // MARK: - User Intent
    
    func addBadge() {

        DispatchQueue.main.async {
            
            let newBadge = CollectionBadge(
                name: "Natural History Museum",
                location: "San Diego, CA",
                badgeImage: Image("badge-museum-1"),
                description: "The San Diego Natural History Museum is a fascinating destination for nature lovers and history buffs alike. Located in the heart of beautiful Balboa Park, this museum features an extensive collection of exhibits that explore the natural world and the history of the San Diego region.",
                locationImages: [
                    "sd-museum-1",
                    "sd-museum-2",
                    "sd-museum-3",
                ]
            )

            self.model.add(badge: newBadge)
        }
    }

    
}
