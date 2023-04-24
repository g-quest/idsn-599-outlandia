//
//  CollectionBadge.swift
//  Outlandia
//
//  Created by Yuning Tang on 4/20/23.
//

import SwiftUI

struct CollectionBadge: Identifiable {
    var id: UUID = UUID()
    var name: String
    var location: String
    var badgeImage: Image
    var description: String
    var locationImages: [String]

    
}
