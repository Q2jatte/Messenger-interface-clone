//
//  MessageLine.swift
//  Messenger
//
//  Created by Eric Terrisson on 13/10/2023.
//

import SwiftUI

struct MessageLine: View {
    let message: Message
    
    // Define a RelativeDateTimeFormatter for formatting time relative to the current date
    var relativeFormatter: RelativeDateTimeFormatter {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .full
        formatter.locale = Locale(identifier: "en_EN")
        return formatter
    }
    
    var body: some View {
        // Create an HStack to display message information
        HStack {
            // Display the author's profile picture
            Image(message.author.photoName)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 70)
            // Create a VStack for aligning content vertically
            VStack(alignment: .leading) {
                // Display the author's name
                Text(message.author.name)
                    .font(.headline)
                    .foregroundColor(.black)
                // Create an HStack for the message text and timestamp
                HStack {
                    // Display the message text
                    Text(message.text)
                        .font(.body)
                        .lineLimit(1)
                        .foregroundColor(.black)
                    // Display the relative timestamp
                    Text(relativeFormatter.localizedString(for: message.createAt, relativeTo: Date()))
                        .foregroundColor(.gray)
                        .font(.body)
                }
            }
        }
    }
}

struct MessageLine_Previews: PreviewProvider {
    static var previews: some View {
        // Preview the MessageLine with a sample message
        MessageLine(message: Message.all[3])
    }
}

