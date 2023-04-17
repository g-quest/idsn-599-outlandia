//
//  Post.swift
//  Outlandia
//
//  Created by GREGORY CUESTA on 4/16/23.
//

import SwiftUI

struct Post: Identifiable {
    var id: UUID = UUID()
    var title: String
    var location: String
    var image: Image
    var owner: String
    var ownerImage: Image
    var isLiked: Bool
}
