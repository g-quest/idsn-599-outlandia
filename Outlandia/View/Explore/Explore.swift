//
//  Explore.swift
//  Outlandia
//
//  Created by GREGORY CUESTA on 4/16/23.
//

import SwiftUI
import RealityKit
import ARKit

struct Explore: View {
    var body: some View {
        ARViewContainer().edgesIgnoringSafeArea(.top)
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

struct Explore_Previews: PreviewProvider {
    static var previews: some View {
        Explore()
    }
}
