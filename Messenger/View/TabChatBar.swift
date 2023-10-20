//
//  TabChatBar.swift
//  Messenger
//
//  Created by Eric Terrisson on 17/10/2023.
//

import SwiftUI
import UIKit

struct TabChatBar: View {
    var body: some View {
        
        HStack(alignment: .center, spacing: 20) {
            // Add button
            Button {
                print("Add button")
            } label: {
                Image(systemName: "plus.circle.fill")
            }
            // Camera button
            Button {
                print("Camera button")
            } label: {
                Image(systemName: "camera.fill")
            }
            // Picture button
            Button {
                print("Picture button")
            } label: {
                Image(systemName: "photo")
            }
            // Microphone button
            Button {
                print("Micro button")
            } label: {
                Image(systemName: "mic.fill")
            }
            // Keyboard button
            Button {
                print("Keyboard button")
                // Open the keyboard
                UIApplication.shared.sendAction(#selector(UIResponder.becomeFirstResponder), to: nil, from: nil, for: nil)
            } label: {
                Text("Aa")
                Spacer()
                Image(systemName: "face.smiling.inverse")
            }
            .frame(width: 100)
            .padding(5)
            .background(Color(red: 211 / 255, green: 211 / 255, blue: 211 / 255)) // Set the background color
            .clipShape(Capsule()) // Clip the button in a capsule shape
            // Like button
            Button {
                print("Like button")
            } label: {
                Image(systemName: "hand.thumbsup.fill")
            }
        }
        .padding(10)
        .frame(maxWidth: .infinity) // Occupy the full width
        .background(Color.white) // Set the toolbar's background color
    }
}

struct TabChatBar_Previews: PreviewProvider {
    static var previews: some View {
        // Preview the TabChatBar
        TabChatBar()
    }
}

