//
//  CommunityDetail.swift
//  Outlandia
//
//  Created by GREGORY CUESTA on 4/16/23.
//

import SwiftUI

struct CommunityDetail: View {
    @EnvironmentObject var viewModel: CommunityPostsViewModel
    var post: CommunityPost
    
    var postIndex: Int {
        viewModel.posts.firstIndex(where: { $0.id == post.id })!
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
                
                if (post.owner == "The Outlandia Team") {
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

struct CommunityDetail_Previews: PreviewProvider {
    static let viewModel = CommunityPostsViewModel()
    
    static var previews: some View {
        CommunityDetail(post: viewModel.posts[2]).environmentObject(viewModel)
    }
}
