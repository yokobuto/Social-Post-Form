//
//  Social_Post_FormApp.swift
//  Social Post Form
//
//  Created by Jörg Klausewitz on 27.04.25.
//

import SwiftUI


@main
struct Social_Post_FormApp: App {
    
    @State private var selectedImage: Image? = nil
    
    var body: some Scene {
        WindowGroup {
            ContentView(selectedImage: $selectedImage)
        }
    }
}
