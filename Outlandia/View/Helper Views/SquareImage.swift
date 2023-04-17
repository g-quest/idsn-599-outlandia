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
    static let viewModel = OutlandiaPostsViewModel()
    
    static var previews: some View {
        SquareImage(name: viewModel.outlandiaPosts[4].image)
    }
}
