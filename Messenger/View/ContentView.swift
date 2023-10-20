//
//  ContentView.swift
//  Messenger
//
//  Created by Eric Terrisson on 13/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    // Access the color scheme environment to determine if it's light or dark mode
    @Environment(\.colorScheme) var colorScheme
    
    // State variable to control the profile modal's visibility
    @State private var isShowingProfil = false
    
    // State variable to store the search text
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            // Display the main content of the app
            HomeView()
                .navigationBarTitle("Chats", displayMode: .inline) // Set the navigation bar title
                .font(.largeTitle)
                .navigationBarItems(leading:
                    // Add a button to toggle the profile modal's visibility
                    Button(action: {
                        isShowingProfil.toggle()
                    }) {
                        CirclePictureView(author: Author.me, size: 100)
                    }
                )
                .sheet(isPresented: $isShowingProfil) {
                    // Display the user's profile in a modal when isShowingProfil is true
                    ProfilView(isPresented: $isShowingProfil)
                }
                .navigationBarItems(trailing: Button(action: {}, label: {Image(systemName: "square.and.pencil.circle.fill")}))
                .navigationBarItems(trailing: Button(action: {}, label: {Image(systemName: "camera.circle.fill")}))
                .searchable(text: $searchText) // Enable the search functionality
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // Preview the ContentView
        ContentView()
    }
}

