//
//  Capture.swift
//  Outlandia
//
//  Created by GREGORY CUESTA on 4/16/23.
//

import SwiftUI
import RealityKit

struct Discover: View {
    var body: some View {
//        ARViewContainer().edgesIgnoringSafeArea(.all)
        ARViewContainer()
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

struct Discover_Previews: PreviewProvider {
    static var previews: some View {
        Discover()
    }
}