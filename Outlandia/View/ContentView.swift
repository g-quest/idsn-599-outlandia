//
//  ContentView.swift
//  Outlandia
//
//  Created by GREGORY CUESTA on 4/16/23.
//

import SwiftUI


struct ContentView : View {
    @StateObject var viewModel = OutlandiaPostsViewModel()
    @State private var selection: Tab = .community
    
    enum Tab {
        case capture
        case collection
        case leaderboard
        case community
    }
    
    var body: some View {
        TabView(selection: $selection) {
            Capture()
                .tabItem {
                    Label("Discover", systemImage: "globe.americas.fill")
                }
                .tag(Tab.capture)
            Collection()
                .tabItem {
                    Label("Collection", systemImage: "square.stack.3d.down.right.fill")
                }
                .tag(Tab.collection)
            Leaderboard()
                .tabItem {
                    Label("Leaderboard", systemImage: "medal.fill")
                }
                .tag(Tab.leaderboard)
            PostList()
                .environmentObject(viewModel)
                .tabItem {
                    Label("Community", systemImage: "person.3.fill")
                }
                .tag(Tab.community)
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
