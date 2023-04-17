//
//  ContentView.swift
//  Outlandia
//
//  Created by GREGORY CUESTA on 4/16/23.
//

import SwiftUI


struct ContentView : View {
    @State private var selection: Tab = .feed
    
    enum Tab {
        case capture
        case collection
        case leaderboard
        case feed
    }
    
    var body: some View {
        TabView(selection: $selection) {
            Capture()
                .tabItem {
                    Label("Capture", systemImage: "camera.fill")
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
            Feed()
                .tabItem {
                    Label("Feed", systemImage: "house.fill")
                }
                .tag(Tab.feed)
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
