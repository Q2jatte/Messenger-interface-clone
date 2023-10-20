//
//  Home.swift
//  Messenger
//
//  Created by Eric Terrisson on 13/10/2023.
//

import SwiftUI

struct HomeView: View {
    
    @State private var selectedMessage: Message?
    
    var body: some View {
        // Create a ScrollView to display the content
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 0) {
                // Display the app's header or headband
                HeadBandView()
                
                // Create another vertical ScrollView to display the list of messages
                ScrollView(.vertical) {
                    LazyVStack {
                        // Iterate through the list of messages and create a ChatView for each
                        ForEach(Message.all) { message in
                            // Add a navigation link to navigate to the ChatView when a message is selected
                            NavigationLink(destination: ChatView(message: message)) {
                                // Display a MessageLine for the message
                                MessageLine(message: message)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        // Preview the HomeView
        HomeView()
    }
}






