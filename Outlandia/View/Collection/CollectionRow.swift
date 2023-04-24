//
//  CollectionRow.swift
//  Outlandia
//
//  Created by Yuning Tang on 4/20/23.
//

import SwiftUI

struct CollectionRow: View {
    var locationName: String
    var badges: ArraySlice<CollectionBadge>
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(locationName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center, spacing: 0) {
                    ForEach(badges) { badge in
                        NavigationLink {
                            CollectionBadgeDetail(badge: badge)
                        } label: {
                            CollectionBadgeIcon(badge: badge)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CollectionRow_Previews: PreviewProvider {
    static let viewModel = CollectionBadgesViewModel()
    
    static var previews: some View {
        CollectionRow(
            locationName: viewModel.badges[0].location,
            badges: Array(viewModel.badges)[0...4]
        ).environmentObject(viewModel)
    }

}
