//
//  Message.swift
//  Messenger
//
//  Created by Eric Terrisson on 13/10/2023.
//

import Foundation

// Define a struct named "Message" that conforms to the Identifiable protocol.
struct Message: Identifiable {
    // Generate a unique identifier for each Message instance using UUID.
    var id = UUID()
    
    // The author of the message, referring to an instance of the "Author" struct.
    let author: Author
    
    // The timestamp indicating when the message was created.
    let createAt: Date
    
    // The text content of the message.
    let text: String
    
    // A flag indicating whether the message is marked as "new."
    var isNew: Bool
    
    // A static array containing predefined Message instances for demonstration.
    static var all = [
        Message(author: Author.all[0], createAt: Date(), text: "Super journée à la plage ! ☀️🏖️ #VieDePlage", isNew: true),
        Message(author: Author.all[2], createAt: Date(), text: "C'est l'heure du café, quelqu'un se joint à moi ? ☕", isNew: true),
        Message(author: Author.all[6], createAt: Date(), text: "Enfin terminé mon dernier livre, des recommandations pour le prochain ? 📚", isNew: true),
        Message(author: Author.all[5], createAt: Date(), text: "Concert ce soir, qui vient avec moi ? 🎵🤘", isNew: true),
        Message(author: Author.all[7], createAt: Date(), text: "Nouvelle recette testée ce soir : tacos végétariens. C'était délicieux ! 🌮🌱", isNew: true),
        Message(author: Author.all[1], createAt: Date(), text: "Rando en montagne ce weekend, la vue était incroyable ! 🏞️🥾", isNew: true),
        Message(author: Author.all[4], createAt: Date(), text: "Félicitations à mon ami pour son nouveau job ! 🎉👏 #NouveauDépart", isNew: true),
        Message(author: Author.all[3], createAt: Date(), text: "Un peu de yoga ce matin pour commencer la journée en douceur. Namasté. 🧘‍♀️☀️", isNew: true)
    ]
}
