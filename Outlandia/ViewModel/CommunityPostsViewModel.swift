//
//  CommunityPostsViewModel.swift
//  Outlandia
//
//  Created by GREGORY CUESTA on 4/16/23.
//

import SwiftUI
import UIKit

class CommunityPostsViewModel: ObservableObject {
    
    // MARK: - Connection to the Model
    
    @Published private var model: CommunityPosts = CommunityPosts()
    
    // MARK: - Public vars available to the View
    
    var posts: [CommunityPost] {
        model.posts
    }
    
    // MARK: - User Intent
    
    func setLiked(_ post: CommunityPost) {
        model.toggleLiked(post)
    }
    
    func addPostFrom(image: UIImage?) {

        // make sure the optional is an actual image
        guard let image else {return}
        
        DispatchQueue.main.async {
            
            let newPost = CommunityPost(
                title: "This is a new Outlandia post",
                location: "Los Angeles, CA",
                image: Image(uiImage: image),
                owner: "The Outlandia Team",
                ownerImage: Image("outlandia"),
                isLiked: false
                )

            self.model.add(post: newPost)
        }
    }
    
    func deletePostAt(_ post: CommunityPost) {
        model.delete(post)
    }
    
}
