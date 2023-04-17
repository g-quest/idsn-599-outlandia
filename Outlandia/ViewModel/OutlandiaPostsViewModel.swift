//
//  OutlandiaPostsViewModel.swift
//  Outlandia
//
//  Created by GREGORY CUESTA on 4/16/23.
//

import SwiftUI
import UIKit

class OutlandiaPostsViewModel: ObservableObject {
    
    // MARK: - Connection to the Model
    
    @Published private var model: OutlandiaPosts = OutlandiaPosts()
    
    // MARK: - Public vars available to the View
    
    var outlandiaPosts: [Post] {
        model.posts
    }
    
    var outlandiaProfile: Profile {
        model.profile
    }
    
    // MARK: - User Intent
    
    func setLiked(_ post: Post) {
        model.toggleLiked(post)
    }
    
    func addPostFrom(image: UIImage?) {

        // make sure the optional is an actual image
        guard let image else {return}
        
        // you must do this on main thread for UI to update properly
        DispatchQueue.main.async {
            
            let newPost = Post(
                title: "This is a new Outlandia post",
                location: "Los Angeles, CA",
                image: Image(uiImage: image),
                owner: self.model.profile.name,
                ownerImage: Image("outlandia"),
                isLiked: false
                )


            // call some function on the model to add the new post to the array of posts, you can do this how you like, but the logic should be in the model
            self.model.add(post: newPost)
        }
    }
    
    func deletePostAt(_ post: Post) {
        model.delete(post)
    }
    
}
