//
//  HeadBandView.swift
//  Messenger
//
//  Created by Eric Terrisson on 13/10/2023.
//

import SwiftUI

struct HeadBandView: View {
    var body: some View {
        // Create a horizontal ScrollView with no scroll indicators
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 20) {
                // Iterate through the list of authors and create an Image for each
                ForEach(Author.all) { author in
                    // Display the image of the friend
                    CirclePictureView(author: author, size: 70)                    
                }
            }
        }
    }
}

struct HeadBandView_Previews: PreviewProvider {
    static var previews: some View {
        // Preview the HeadBandView
        HeadBandView()
    }
}
