//
//  ChatViewModel.swift
//  WhatsApp-Clone
//
//  Created by PHN MAC 1 on 14/05/24.
//

import UIKit

final class ChatViewModel{
    let chats: [ChatModel] = [
        .init(image: ._1, userName: "Andrew Parker", lastMsg: "What kind of strategy is better?", msgStatus: .readText, date: "11/16/19"),
        .init(image: ._2, userName: "Karen Castillo", lastMsg: "0:14", msgStatus: .voice, date: "11/15/19"),
        .init(image: ._3, userName: "Maximillian Jacobson", lastMsg: "Bro, I have a good idea! ", msgStatus: .readText, date: "10/30/19"),
        .init(image: ._4, userName: "Martha Craig", lastMsg: "Photo", msgStatus: .photo, date: "10/28/19"),
        .init(image: ._5, userName: "Tabitha Potter", lastMsg: "Actually I wanted to check with you about your online business plan on our…", msgStatus: .NotReadText, date: "8/25/19"),
        .init(image: ._6, userName: "Maisy Humphrey", lastMsg: "faster, look at Pixsellz", msgStatus: .readText, date: "8/20/19"),
        .init(image: ._7, userName: "Kieron Dotson", lastMsg: "Ok, have a good trip!", msgStatus: .readText, date: "7/29/19"),
        
        .init(image: ._1, userName: "Andrew Parker", lastMsg: "What kind of strategy is better?", msgStatus: .readText, date: "11/16/19"),
        .init(image: ._2, userName: "Karen Castillo", lastMsg: "0:14", msgStatus: .voice, date: "11/15/19"),
        .init(image: ._3, userName: "Maximillian Jacobson", lastMsg: "Bro, I have a good idea! ", msgStatus: .readText, date: "10/30/19"),
        .init(image: ._4, userName: "Martha Craig", lastMsg: "Photo", msgStatus: .photo, date: "10/28/19"),
        .init(image: ._5, userName: "Tabitha Potter", lastMsg: "Actually I wanted to check with you about your online business plan on our…", msgStatus: .NotReadText, date: "8/25/19"),
        .init(image: ._6, userName: "Maisy Humphrey", lastMsg: "faster, look at Pixsellz", msgStatus: .readText, date: "8/20/19"),
        .init(image: ._7, userName: "Kieron Dotson", lastMsg: "Ok, have a good trip!", msgStatus: .readText, date: "7/29/19"),
    ]
    
    func getMessages(sender1: Sender, sender2: Sender)->[Message]{
        var messages: [Message] = [
           // Previous data
           .init(sender: sender1,
                 messageId: "3",
                 sentDate: Date().addingTimeInterval(-86400),
                 kind: .text("Hey Vivek, how's it going?")),
             
           .init(sender: sender2,
                 messageId: "4",
                 sentDate: Date().addingTimeInterval(-76400),
                 kind: .text("Hey Suraj! I'm good, just finished up with work. What about you?")),
             
           .init(sender: sender1,
                 messageId: "5",
                 sentDate: Date().addingTimeInterval(-65400),
                 kind: .text("Same here, just got home. It's been a long day.")),
             
           .init(sender: sender2,
                 messageId: "6",
                 sentDate: Date().addingTimeInterval(-55400),
                 kind: .text("Tell me about it. Anything exciting happen?")),
             
           .init(sender: sender1,
                 messageId: "7",
                 sentDate: Date().addingTimeInterval(-45400),
                 kind: .text("Nah, just the usual office drama. How about you?")),
             
           .init(sender: sender2,
                 messageId: "8",
                 sentDate: Date().addingTimeInterval(-35400),
                 kind: .text("Nothing much. Just trying to survive the endless meetings.")),
             
           .init(sender: sender1,
                 messageId: "9",
                 sentDate: Date().addingTimeInterval(-25400),
                 kind: .text("Haha, I feel you. So, any plans for the weekend?")),
             
           .init(sender: sender2,
                 messageId: "10",
                 sentDate: Date().addingTimeInterval(-15400),
                 kind: .text("Not really, probably just chill at home. You?")),
             
           .init(sender: sender1,
                 messageId: "11",
                 sentDate: Date().addingTimeInterval(-5400),
                 kind: .text("Yeah, same here. Maybe catch a movie or something.")),
             
           .init(sender: sender2,
                 messageId: "12",
                 sentDate: Date().addingTimeInterval(-1400),
                 kind: .text("Sounds good. Let me know if you find anything interesting to watch.")),
             
           .init(sender: sender1,
                 messageId: "13",
                 sentDate: Date(),
                 kind: .text("Sure thing. Oh, by the way, did you hear about that new restaurant downtown?")),
             
           .init(sender: sender2,
                 messageId: "14",
                 sentDate: Date().addingTimeInterval(1000),
                 kind: .text("Yeah, I did! I heard they have amazing biryani. We should check it out sometime.")),
             
           .init(sender: sender1,
                 messageId: "15",
                 sentDate: Date().addingTimeInterval(2000),
                 kind: .text("Definitely! How about next weekend?")),
             
           .init(sender: sender2,
                 messageId: "16",
                 sentDate: Date().addingTimeInterval(3000),
                 kind: .text("Sounds like a plan. Can't wait to try it out.")),
             
           .init(sender: sender1,
                 messageId: "17",
                 sentDate: Date().addingTimeInterval(4000),
                 kind: .text("Great! It's a date then.")),
             
           .init(sender: sender2,
                 messageId: "18",
                 sentDate: Date().addingTimeInterval(5000),
                 kind: .text("Haha, you wish! Alright, catch you later, Suraj.")),
             
           .init(sender: sender1,
                 messageId: "19",
                 sentDate: Date().addingTimeInterval(6000),
                 kind: .text("Take care, Vivek. See you soon!"))
       ]
        return messages
    }
    
}

