//
//  ContentView.swift
//  Social Post Form
//
//  Created by Jörg Klausewitz on 27.04.25.
//

import SwiftUI


struct ContentView: View {
    
    @State private var showSheet: Bool = false
    
    @State private var title = "test"
    @State private var description = "test"
    @State private var postPublic = false

    var body: some View {
        VStack {
            Spacer()
            Text(title)
            Text(description)
            Text(postPublic ? "Public posting" : "Private posting")
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
            PostForm(title: $title, description: $description, postPublic: $postPublic)
        }
    }
}

#Preview {
    ContentView()
}
