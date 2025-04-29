//
//  PostForm.swift
//  Social Post Form
//
//  Created by Jörg Klausewitz on 27.04.25.
//

import SwiftUI

struct PostForm: View {
    
    @Environment(\.dismiss) var dismiss
    
    @Binding var title: String
    @Binding var description: String
    @Binding var postPublic: Bool

    var body: some View {
        VStack(){
            TextField("Title", text: $title)
            TextField("Description", text: $description)
            Toggle("Public", isOn: $postPublic)
            Button("Add your post"){
                dismiss()
            }
        }.padding()
        
        
    }
}

