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
}

