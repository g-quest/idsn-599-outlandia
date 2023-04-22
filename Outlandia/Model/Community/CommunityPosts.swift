//
//  CommunityPosts.swift
//  Outlandia
//
//  Created by GREGORY CUESTA on 4/16/23.
//

import Foundation
import SwiftUI

struct CommunityPosts {
    var posts: [CommunityPost] = [
        CommunityPost(
            title: "The LACMA Lights",
            location: "Los Angeles, CA",
            image: Image("lacmalights"),
            owner: "Yuning",
            ownerImage: Image("yuning"),
            isLiked: true
        ),
        CommunityPost(
            title: "Gaslamp",
            location: "San Diego, CA",
            image: Image("gaslamp"),
            owner: "Greg",
            ownerImage: Image("greg"),
            isLiked: false
        ),
        CommunityPost(
            title: "Behind the Hollywood Sign",
            location: "Los Angeles, CA",
            image: Image("hollywoodsignback"),
            owner: "Jasmine",
            ownerImage: Image("jasmine"),
            isLiked: true
        ),
        CommunityPost(
            title: "Downtown and the Griffith Observatory",
            location: "Los Angeles, CA",
            image: Image("griffithobservatory"),
            owner: "Jasmine",
            ownerImage: Image("jasmine"),
            isLiked: false
        ),
        CommunityPost(
            title: "The Disney Concert Hall",
            location: "Los Angeles, CA",
            image: Image("disneyconcerthall"),
            owner: "Yuning",
            ownerImage: Image("yuning"),
            isLiked: false
        ),
        CommunityPost(
            title: "Balboa Park",
            location: "San Diego, CA",
            image: Image("balboapark"),
            owner: "Greg",
            ownerImage: Image("greg"),
            isLiked: true
        ),
    ]
    
    mutating func toggleLiked(_ post: CommunityPost) {
        let postIndex = posts.firstIndex { p in
            p.id == post.id
        }
        guard let actualIndex = postIndex else {return}
        
        posts[actualIndex].isLiked.toggle()
    }

    mutating func add(post: CommunityPost) {
        posts.insert(post, at: 0)
    }
    
    mutating func delete(_ post: CommunityPost) {
        let postIndex = posts.firstIndex { p in
            p.id == post.id
        }
        guard let actualIndex = postIndex else {return}
        
        posts.remove(at: actualIndex)
    }
    
}
