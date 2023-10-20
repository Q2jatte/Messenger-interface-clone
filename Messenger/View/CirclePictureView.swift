//
//  CirclePictureView.swift
//  Messenger
//
//  Created by Eric Terrisson on 14/10/2023.
//

import SwiftUI

struct CirclePictureView: View {
    
    let author: Author
    let size: CGFloat
    
    var body: some View {
        // Display the author's profile picture as a resizable circle
        Image(author.photoName)
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .frame(width: size)
            .overlay(
                // Add a blue circle as an outline if the author has a story
                author.story ?
                    Circle()
                        .stroke(Color.blue, lineWidth: 5)
                        .frame(width: size + 5, height: size + 5)
                        .offset(x: 0, y: 0)
                    : nil
            )
            .overlay(
                // Add a green badge if the author is online
                author.isOnline ?
                    Circle()
                        .fill(Color.green)
                        .frame(width: 30, height: 30)
                        .offset(x: 35, y: 35)
                    : nil
            )
    }
}

struct CirclePictureView_Previews: PreviewProvider {
    static var previews: some View {
        // Preview the CirclePictureView with a sample author and size
        CirclePictureView(author: Author.all[0], size: 100)
    }
}

