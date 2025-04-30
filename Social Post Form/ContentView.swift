//
//  ContentView.swift
//  Social Post Form
//
//  Created by Jörg Klausewitz on 27.04.25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showSheet: Bool = false
    
    @State private var title = ""
    @State private var description = ""
    @State private var postPublic = false
    
    @Binding var selectedImage: Image?
    
    var body: some View {
        VStack {
            Spacer()
            if let selectedImage {
                  selectedImage
                      .resizable()
                      .scaledToFit()
                      .frame(height: 300)
                      .padding()
              }
            Text(title)
            Text(description)
            
            Text(postPublic ? "Public posting" : "")
                .padding()
                .fontWeight(.bold)
            
            Spacer()
            Image(systemName: "plus")
                .foregroundStyle(.blue)
                .padding()
                .onTapGesture {
                    showSheet = true
                }
            
        }
        .padding()
        .sheet(isPresented: $showSheet){
            PostForm(title: $title, description: $description, postPublic: $postPublic, selectedImage: $selectedImage)
        }
    }
}




