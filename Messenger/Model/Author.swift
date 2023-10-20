//
//  User.swift
//  Messenger
//
//  Created by Eric Terrisson on 13/10/2023.
//

import Foundation

// Define a struct named "Author" that conforms to the Identifiable protocol.
struct Author: Identifiable {
    // Generate a unique identifier for each Author instance using UUID.
    var id = UUID()
    
    // Author's name, a required property.
    let name: String
    
    // Name of the photo associated with the Author.
    let photoName: String
    
    // Represents whether the Author is currently online.
    var isOnline: Bool
    
    // Indicates whether the Author has a story to share.
    var story: Bool

    // A static array containing predefined Author instances for demonstration.
    static var all = [
        Author(name: "Robert", photoName: "robert", isOnline: true, story: true),
        Author(name: "Joseph", photoName: "joseph", isOnline: false, story: false),
        Author(name: "Hoshi", photoName: "hoshi", isOnline: true, story: true),
        Author(name: "Prince", photoName: "prince", isOnline: true, story: false),
        Author(name: "Elen", photoName: "elen", isOnline: true, story: false),
        Author(name: "Umbrela", photoName: "umbrela", isOnline: false, story: true),
        Author(name: "Albert", photoName: "albert", isOnline: false, story: false),
        Author(name: "Aiko", photoName: "aiko", isOnline: false, story: false)
    ]

    // A static instance representing the current user ("Me").
    static var me = Author(name: "Moïse Seyoum", photoName: "moi", isOnline: false, story: false)
}
