//
//  ContentView.swift
//  ARFaceAnchoredContentTutorial
//
//  Created by Cole Dennis on 9/18/22.
//

import SwiftUI
import RealityKit
import ARKit

struct ContentView : View {
    var body: some View {
        ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        arView.session.run(ARFaceTrackingConfiguration())
        
        // Load the "Box" scene from the "Experience" Reality File
//        let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
//        arView.scene.anchors.append(boxAnchor)
        
        
        
        // Load the "Scene" scene from the "AR Face Anchoring Tutorial" File
//        let faceAnchor = try! ARFaceAnchoringTutorial.loadScene()
        
        //Add the face anchor to the scene
//        arView.scene.anchors.append(faceAnchor)
        
        
//
        let sphereEntity = ModelEntity(mesh: .generateSphere(radius: 0.1), materials: [SimpleMaterial(color: .white, isMetallic: false)])
        let sphereAnchor = AnchorEntity(.face)

        sphereAnchor.addChild(sphereEntity)

        arView.scene.anchors.append(sphereAnchor)
        
        arView.renderOptions = .disableFaceMesh
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
