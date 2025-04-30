//
//  PostForm.swift
//  Social Post Form
//
//  Created by Jörg Klausewitz on 27.04.25.
//

import SwiftUI
import PhotosUI

struct PostForm: View {
    
    @Environment(\.dismiss) var dismiss
    
    @Binding var title: String
    @Binding var description: String
    @Binding var postPublic: Bool
    
    @State var selectedItem: PhotosPickerItem?
    
    @Binding var selectedImage: Image?

    var body: some View {
        VStack(){
            
            if let selectedImage {
                  selectedImage
                      .resizable()
                      .scaledToFit()
                      .frame(height: 300)
                      .padding()
              } else {
                  Text("No photo selected")
                      .foregroundColor(.gray)
              }
            
            PhotosPicker(
                selection: $selectedItem,
                matching: .images
            ) {
                Label("Select a photo", systemImage: "photo")
            }
            .padding()
            
            TextField("Title", text: $title)
            TextField("Description", text: $description)
            Toggle("Public", isOn: $postPublic)
            Button("Add your post"){
                dismiss()
            }
        }.onChange(of: selectedItem) { oldItem, newItem in
            Task {
                if let newItem,
                   let image = try? await newItem.loadTransferable(type: Image.self) {
                    selectedImage = image
                }
            }
        }
        .padding()
    }
}

