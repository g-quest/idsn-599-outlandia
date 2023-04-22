//
//  DiscoverLocationMapAnnotation.swift
//  Outlandia
//
//  Created by Jasmine Lee on 4/20/23.
//

import SwiftUI

struct DiscoverLocationMapAnnotation: View {
    var body: some View {
        VStack(spacing: 0) {
            Image(systemName: "mappin.and.ellipse")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .foregroundColor(.red)
                .padding(.bottom, 40)
        }
    }
}

struct DiscoverLocationMapAnnotation_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            DiscoverLocationMapAnnotation()
        }
    }
}
