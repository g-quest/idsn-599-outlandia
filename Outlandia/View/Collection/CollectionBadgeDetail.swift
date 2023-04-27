//
//  CollectionBadgeDetail.swift
//  Outlandia
//
//  Created by Yuning Tang on 4/20/23.
//

import SwiftUI

struct CollectionBadgeDetail: View {
    
    let badge: CollectionBadge
    
    var body: some View {
        ScrollView {
            VStack {
                imageSelection
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y:10)
                
                VStack(alignment: .leading, spacing: 16) {
                    titleSection
                    Divider()
                    descriptionSection
                    Divider()
                    
                    // Future implementation / fix:
                    // Make this dynamic based on model data
                    if (badge.name == "San Diego Zoo") {
                        unlockedContentSection
                    }
            
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }
        }
        .background(.ultraThinMaterial)
    }
}

struct CollectionBadgeDetail_Previews: PreviewProvider {
    static let viewModel = CollectionBadgesViewModel()
    
    static var previews: some View {
        CollectionBadgeDetail(badge: viewModel.badges[2])
    }
}

extension CollectionBadgeDetail {
    
    private var imageSelection: some View {
        TabView {
            ForEach(badge.locationImages, id: \.self) { imageName in
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width)
                    .clipped()
            }
        }
        .frame(height: 400)
        .tabViewStyle(PageTabViewStyle())
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(badge.name)
                .font(.title)
                .fontWeight(.semibold)
            Text(badge.location)
                .font(.title3)
                .foregroundColor(.secondary)
        }
    }
    
    private var descriptionSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(badge.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
        
        }
    }
    
    private var unlockedContentSection: some View {
        VStack (alignment: .leading){
            Text("Unlocked Content")
                .font(.title3)
                .fontWeight(.semibold)
            
            HStack {
                NavigationLink {
                    CollectionBadgeUnlockable(name: "bear")
                } label: {
                    Image("unlockable-bear-1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .padding(10)
                }

                NavigationLink {
                    CollectionBadgeUnlockable(name: "panda")
                } label: {
                    Image("unlockable-panda-1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .padding(10)
                }
            }
        }
    }
}
