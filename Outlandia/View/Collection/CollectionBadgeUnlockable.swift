//
//  CollectionBadgeUnlockable.swift
//  Outlandia
//
//  Created by GREGORY CUESTA on 4/23/23.
//

import SwiftUI
import RealityKit
import ARKit

struct CollectionBadgeUnlockable: View {
    
    var name: String
    
    var body: some View {
        ARFaceViewContainer(name: name)
    }
}

struct ARFaceViewContainer: UIViewRepresentable {
    
    var name: String
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        if !ARFaceTrackingConfiguration.isSupported {
            print("Your device does not support face anchors!")
        } else {
            let configuration = ARFaceTrackingConfiguration()
            arView.session.run(configuration)

            // Future implementation / fix:
            // Make this more dynamic instead of hard coded
            if (name == "bear") {
                let faceAnchor = try! Experience.loadBear()
                arView.scene.addAnchor(faceAnchor)
            }
            else if (name == "panda") {
                let faceAnchor = try! Experience.loadPanda()
                arView.scene.addAnchor(faceAnchor)
            }
            
        }
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

struct CollectionBadgeUnlockable_Previews: PreviewProvider {
    static var previews: some View {
        CollectionBadgeUnlockable(name: "bear")
    }
}
