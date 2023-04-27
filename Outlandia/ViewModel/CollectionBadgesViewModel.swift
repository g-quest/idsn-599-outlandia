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
        
        print("ADDING BADGE")
  
        // Future implementation / fix:
        // Add badge on box tap. Wasn't working on initial attempt.
//        let newBadge = CollectionBadge(
//            name: "Test Add",
//            location: "San Diego, CA",
//            badgeImage: Image("badge-zoo-1"),
//            description: "Test item",
//            locationImages: [
//                "sd-museum-3",
//            ]
//        )
//
//        self.model.add(badge: newBadge)
    }

    
}
