//
//  ProfilView.swift
//  Messenger
//
//  Created by Eric Terrisson on 17/10/2023.
//

import SwiftUI

struct ProfilView: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        // Create a VStack to arrange the content vertically
        VStack {
            // Create an HStack for the Done button
            HStack {
                Spacer()
                Button {
                    print("Done")
                    isPresented.toggle() // Close the modal view
                } label: {
                    Text("Done")
                }
                .padding(.trailing, 20)
            }
            
            // Display the user's profile picture in a circular view
            CirclePictureView(author: Author.me, size: 100)
            
            // Display the user's name in bold
            Text(Author.me.name)
                .bold()
            
            // Create a List with user preferences and settings
            List {
                // Dark Mode preference
                HStack{
                    Image(systemName: "moon.circle.fill")
                        .font(.system(size: 24))
                    Text("Dark Mode")
                }
                // Active Status preference
                HStack{
                    Image(systemName: "circle.fill")
                        .foregroundColor(.green)
                        .font(.system(size: 24))
                    Text("Active Status")
                }
                // Message Requests preference
                HStack{
                    Image(systemName: "ellipsis.message.fill")
                        .foregroundColor(.blue)
                        .font(.system(size: 24))
                    Text("Message Requests")
                }
                // Privacy preference
                HStack{
                    Image(systemName: "shield.fill")
                        .foregroundColor(.blue)
                        .font(.system(size: 24))
                    Text("Privacy")
                }
                // Preferences section
                Section(header: Text("PREFERENCES")){
                    // Notification & Sounds preference
                    HStack{
                        Image(systemName: "bell.circle.fill")
                            .foregroundColor(.purple)
                            .font(.system(size: 24))
                        Text("Notification & Sounds")
                    }
                    // Phone Contacts preference
                    HStack{
                        Image(systemName: "person.2.circle.fill")
                            .foregroundColor(.purple)
                            .font(.system(size: 24))
                        Text("Phone Contacts")
                    }
                    // Story preference
                    HStack{
                        Image(systemName: "viewfinder.circle.fill")
                            .foregroundColor(.pink)
                            .font(.system(size: 24))
                        Text("Story")
                    }
                    // Facebook Pay preference
                    HStack{
                        Image(systemName: "creditcard.circle.fill")
                            .font(.system(size: 24))
                        Text("Facebook Pay")
                    }
                    // Photos & Media preference
                    HStack{
                        Image(systemName: "photo.circle.fill")
                            .foregroundColor(.purple)
                            .font(.system(size: 24))
                        Text("Photos & Media")
                    }
                }
            }
            .listStyle(PlainListStyle()) // Set the list style
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)) // Adjust list row insets
            .background(.white) // Set the background color of the list
        }
    }
}

struct ProfilView_Previews: PreviewProvider {
    struct ProfilViewModel: View {
        @State var isPresented: Bool = true

        var body: some View {
            // Preview the ProfilView with a sample isPresented binding
            ProfilView(isPresented: $isPresented)
        }
    }

    static var previews: some View {
        // Preview the ProfilViewModel
        ProfilViewModel()
    }
}

