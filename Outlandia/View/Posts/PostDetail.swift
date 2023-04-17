//
//  PostDetail.swift
//  Outlandia
//
//  Created by GREGORY CUESTA on 4/16/23.
//

import SwiftUI

struct PostDetail: View {
    @EnvironmentObject var viewModel: OutlandiaPostsViewModel
    var post: Post
    
    var postIndex: Int {
        viewModel.outlandiaPosts.firstIndex(where: { $0.id == post.id })!
     }
    
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack() {
                RoundedImage(name: post.ownerImage, height: 30)

                Text(post.owner)
                    .font(.headline)
                
                Spacer()
            }
            
            SquareImage(name: post.image)
            
            HStack {
                Text(post.title)
                    .font(.subheadline)
                .padding(.leading, 10)
                
                Spacer()
                
                Text(post.location)
                    .font(.caption)
                    .foregroundColor(.gray)
                .padding(.trailing, 10)
            }
            
            HStack {
                Button {
                    viewModel.setLiked(post)
                } label: {
                    Label("Toggle Liked", systemImage: post.isLiked ? "heart.fill" : "heart")
                        .labelStyle(.iconOnly)
                        .foregroundColor(post.isLiked ? .red : .gray)
                }
                .padding(.leading, 10)
                .padding(.top, 1)
                .buttonStyle(.plain)
                
                Spacer()
                
                if (post.owner == viewModel.outlandiaProfile.name) {
                    Button {
                        viewModel.deletePostAt(post)
                    } label: {
                        Label("Delete Post", systemImage: "trash")
                            .labelStyle(.iconOnly)
                            .foregroundColor(.red)
                    }
                    .padding(.trailing, 10)
                    .padding(.top, 1)
                    .buttonStyle(.plain)
                }

            }
        }
    }
}

struct PostDetail_Previews: PreviewProvider {
    static let viewModel = OutlandiaPostsViewModel()
    
    static var previews: some View {
        PostDetail(post: viewModel.outlandiaPosts[2]).environmentObject(viewModel)
    }
}
