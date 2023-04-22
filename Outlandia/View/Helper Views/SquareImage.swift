//
//  SquareImage.swift
//  Outlandia
//
//  Created by GREGORY CUESTA on 4/16/23.
//

import SwiftUI

struct SquareImage: View {
    
    var name: Image
    
    var body: some View {
        Rectangle()
            .aspectRatio(1, contentMode: .fit)
            .overlay(
                name
                    .resizable()
                    .scaledToFill()
            )
            .clipped()
    }
}

struct SquareImage_Previews: PreviewProvider {
    static let viewModel = CommunityPostsViewModel()
    
    static var previews: some View {
        SquareImage(name: viewModel.posts[4].image)
    }
}
