//
//  CollectionItem.swift
//  Outlandia
//
//  Created by Yuning Tang on 4/20/23.
//

import SwiftUI

struct CollectionBadgeIcon: View {
    var badge: CollectionBadge

    var body: some View {
        VStack(alignment: .leading) {
            badge.badgeImage
                .renderingMode(.original)
                .resizable()
                .frame(width: 150, height: 150)
                .cornerRadius(20)
                .overlay(
                       RoundedRectangle(cornerRadius: 20)
                           .stroke(.black, lineWidth: 1)
                   )
        }
        .padding(.leading, 15)
    }
}

struct CollectionBadgeIcon_Previews: PreviewProvider {
    static let viewModel = CollectionBadgesViewModel()
    
    static var previews: some View {
        CollectionBadgeIcon(badge: viewModel.badges[0]).environmentObject(viewModel)
    }
}
