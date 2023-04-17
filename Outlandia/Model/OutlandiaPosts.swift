//
//  OutlandiaPosts.swift
//  Outlandia
//
//  Created by GREGORY CUESTA on 4/16/23.
//

import Foundation
import SwiftUI

struct OutlandiaPosts {
    var posts: [Post] = [
        Post(
            title: "The LACMA Lights",
            location: "Los Angeles, CA",
            image: Image("lacmalights"),
            owner: "Yuning",
            ownerImage: Image("yuning"),
            isLiked: true
        ),
        Post(
            title: "Gaslamp",
            location: "San Diego, CA",
            image: Image("gaslamp"),
            owner: "Greg",
            ownerImage: Image("greg"),
            isLiked: false
        ),
        Post(
            title: "Behind the Hollywood Sign",
            location: "Los Angeles, CA",
            image: Image("hollywoodsignback"),
            owner: "Jasmine",
            ownerImage: Image("jasmine"),
            isLiked: true
        ),
        Post(
            title: "Downtown and the Griffith Observatory",
            location: "Los Angeles, CA",
            image: Image("griffithobservatory"),
            owner: "Jasmine",
            ownerImage: Image("jasmine"),
            isLiked: false
        ),
        Post(
            title: "The Disney Concert Hall",
            location: "Los Angeles, CA",
            image: Image("disneyconcerthall"),
            owner: "Yuning",
            ownerImage: Image("yuning"),
            isLiked: false
        ),
        Post(
            title: "Balboa Park",
            location: "San Diego, CA",
            image: Image("balboapark"),
            owner: "Greg",
            ownerImage: Image("greg"),
            isLiked: true
        ),
    ]
    
    var profile = Profile.default
    
    mutating func toggleLiked(_ post: Post) {
        let postIndex = posts.firstIndex { p in
            p.id == post.id
        }
        guard let actualIndex = postIndex else {return}
        
        posts[actualIndex].isLiked.toggle()
    }

    mutating func add(post: Post) {
        posts.insert(post, at: 0)
    }
    
    mutating func delete(_ post: Post) {
        let postIndex = posts.firstIndex { p in
            p.id == post.id
        }
        guard let actualIndex = postIndex else {return}
        
        posts.remove(at: actualIndex)
    }
    
}
