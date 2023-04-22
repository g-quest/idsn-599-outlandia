//
//  ContentView.swift
//  Outlandia
//
//  Created by GREGORY CUESTA on 4/16/23.
//

import SwiftUI


struct ContentView : View {
    @StateObject var discoverViewModel = DiscoverLocationsViewModel()
    @StateObject var communityViewModel = CommunityPostsViewModel()
    
    @State private var selection: Tab = .discover
    
    enum Tab {
        case discover
        case collection
        case explore
        case community
    }
    
    var body: some View {
        TabView(selection: $selection) {
            Discover()
                .environmentObject(discoverViewModel)
                .tabItem {
                    Label("Discover", systemImage: "globe.americas.fill")
                }
                .tag(Tab.discover)
            Community()
                .environmentObject(communityViewModel)
                .tabItem {
                    Label("Community", systemImage: "person.3.fill")
                }
                .tag(Tab.community)
            Collection()
                .tabItem {
                    Label("Collection", systemImage: "square.stack.3d.down.right.fill")
                }
                .tag(Tab.collection)
            Explore()
                .tabItem {
                    Label("Explore", systemImage: "dot.circle.viewfinder")
                }
                .tag(Tab.explore)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
