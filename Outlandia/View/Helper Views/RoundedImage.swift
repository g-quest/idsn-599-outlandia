//
//  RoundedImage.swift
//  Outlandia
//
//  Created by GREGORY CUESTA on 4/16/23.
//

import SwiftUI

struct RoundedImage: View {
    
    var name: Image
    var height: CGFloat
    
    var body: some View {
        name
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: height)
            .cornerRadius(50)
            .padding(.leading, 10)
    }
}

struct RoundedImage_Previews: PreviewProvider {
    static let viewModel = OutlandiaPostsViewModel()
    
    static var previews: some View {
        RoundedImage(name: viewModel.outlandiaPosts[2].image, height: 50)
    }
}
