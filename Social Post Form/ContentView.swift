//
//  ContentView.swift
//  Social Post Form
//
//  Created by Jörg Klausewitz on 27.04.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "plus")
                .foregroundStyle(.blue)
                .padding()
                .onTapGesture {
                    openPostSheet()
                }
               
            
        }
        .padding()
    }
}


func openPostSheet(){
    
    print("Plus tapped!")
    
    
    
}

#Preview {
    ContentView()
}
