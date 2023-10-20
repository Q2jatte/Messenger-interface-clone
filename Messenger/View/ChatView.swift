//
//  ChatView.swift
//  Messenger
//
//  Created by Eric Terrisson on 13/10/2023.
//

import SwiftUI

struct ChatView: View {
    
    let message: Message
    
    var body: some View {
        // Create a VStack to arrange the chat view
        VStack {
            // Create an HStack for displaying the sender's profile picture and message
            HStack(alignment: .bottom) {
                // Display the sender's profile picture
                Image(message.author.photoName)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 40)
                // Display the message text with background and styling
                Text(message.text)
                    .padding(10)
                    .background(Color(hue: 1.0, saturation: 0.016, brightness: 0.815))
                    .cornerRadius(10)
                    .frame(width: UIScreen.main.bounds.width * 0.6)
                Spacer()
            }
            // Add a Spacer to push content to the bottom of the view
            Spacer()
            // Display the TabChatBar for additional functionality
            TabChatBar()
        }
        // Set the navigation bar title to the sender's name
        .navigationBarTitle(message.author.name, displayMode: .inline)
        // Add navigation bar items for video and phone call buttons
        .navigationBarItems(trailing: Button(action: {}, label: {Image(systemName: "video.fill")}))
        .navigationBarItems(trailing: Button(action: {}, label: {Image(systemName: "phone.fill")}))
    }
}

struct ChatView_Previews: PreviewProvider {
    
    static var previews: some View {
        // Preview the ChatView with a sample message
        ChatView(message: Message.all[5])
    }
}

