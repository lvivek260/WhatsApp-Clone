//
//  ChatDetailVC.swift
//  WhatsApp-Clone
//
//  Created by PHN MAC 1 on 14/05/24.
//

import UIKit
import MessageKit

struct Sender: SenderType{
    var senderId: String
    var displayName: String
}

struct Message: MessageType{
    var sender: any MessageKit.SenderType
    var messageId: String
    var sentDate: Date
    var kind: MessageKit.MessageKind
}

struct ImageSend: MediaItem{
    var url: URL?
    var image: UIImage?
    var placeholderImage: UIImage
    var size: CGSize
}



class ChatDetailVC: MessagesViewController {
    var chatData: ChatModel?
    
    let suraj = Sender(senderId: "suraj", displayName: "Suraj")
    let vivek = Sender(senderId: "vivek", displayName: "Vivek")
    var messages: [Message] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        addNavigationTitleHeaderView()
        messageKitConfiguration()
    }
    
    private func messageKitConfiguration(){
        messagesCollectionView.messagesDataSource = self
        messagesCollectionView.messagesLayoutDelegate = self
        messagesCollectionView.messagesDisplayDelegate = self
        
         messages = [
            // Previous data
            .init(sender: suraj,
                  messageId: "3",
                  sentDate: Date().addingTimeInterval(-86400),
                  kind: .text("Hey Vivek, how's it going?")),
              
            .init(sender: vivek,
                  messageId: "4",
                  sentDate: Date().addingTimeInterval(-76400),
                  kind: .text("Hey Suraj! I'm good, just finished up with work. What about you?")),
              
            .init(sender: suraj,
                  messageId: "5",
                  sentDate: Date().addingTimeInterval(-65400),
                  kind: .text("Same here, just got home. It's been a long day.")),
              
            .init(sender: vivek,
                  messageId: "6",
                  sentDate: Date().addingTimeInterval(-55400),
                  kind: .text("Tell me about it. Anything exciting happen?")),
              
            .init(sender: suraj,
                  messageId: "7",
                  sentDate: Date().addingTimeInterval(-45400),
                  kind: .text("Nah, just the usual office drama. How about you?")),
              
            .init(sender: vivek,
                  messageId: "8",
                  sentDate: Date().addingTimeInterval(-35400),
                  kind: .text("Nothing much. Just trying to survive the endless meetings.")),
              
            .init(sender: suraj,
                  messageId: "9",
                  sentDate: Date().addingTimeInterval(-25400),
                  kind: .text("Haha, I feel you. So, any plans for the weekend?")),
              
            .init(sender: vivek,
                  messageId: "10",
                  sentDate: Date().addingTimeInterval(-15400),
                  kind: .text("Not really, probably just chill at home. You?")),
              
            .init(sender: suraj,
                  messageId: "11",
                  sentDate: Date().addingTimeInterval(-5400),
                  kind: .text("Yeah, same here. Maybe catch a movie or something.")),
              
            .init(sender: vivek,
                  messageId: "12",
                  sentDate: Date().addingTimeInterval(-1400),
                  kind: .text("Sounds good. Let me know if you find anything interesting to watch.")),
              
            .init(sender: suraj,
                  messageId: "13",
                  sentDate: Date(),
                  kind: .text("Sure thing. Oh, by the way, did you hear about that new restaurant downtown?")),
              
            .init(sender: vivek,
                  messageId: "14",
                  sentDate: Date().addingTimeInterval(1000),
                  kind: .text("Yeah, I did! I heard they have amazing biryani. We should check it out sometime.")),
              
            .init(sender: suraj,
                  messageId: "15",
                  sentDate: Date().addingTimeInterval(2000),
                  kind: .text("Definitely! How about next weekend?")),
              
            .init(sender: vivek,
                  messageId: "16",
                  sentDate: Date().addingTimeInterval(3000),
                  kind: .text("Sounds like a plan. Can't wait to try it out.")),
              
            .init(sender: suraj,
                  messageId: "17",
                  sentDate: Date().addingTimeInterval(4000),
                  kind: .text("Great! It's a date then.")),
              
            .init(sender: vivek,
                  messageId: "18",
                  sentDate: Date().addingTimeInterval(5000),
                  kind: .text("Haha, you wish! Alright, catch you later, Suraj.")),
              
            .init(sender: suraj,
                  messageId: "19",
                  sentDate: Date().addingTimeInterval(6000),
                  kind: .text("Take care, Vivek. See you soon!"))
        ]

    }
    
    private func addNavigationTitleHeaderView(){
        let chatDetailHeader = ChatDetailHeader(frame: .init(x: 0, y: 0, width:  200, height: 100))
        chatDetailHeader.chatData = self.chatData
        chatDetailHeader.refrenceVC = self
        navigationItem.titleView = chatDetailHeader
    }
}

extension ChatDetailVC: MessagesDataSource, MessagesLayoutDelegate, MessagesDisplayDelegate{
    func currentSender() -> any MessageKit.SenderType {
        return vivek
    }
    
    func messageForItem(at indexPath: IndexPath, in messagesCollectionView: MessageKit.MessagesCollectionView) -> any MessageKit.MessageType {
        return messages[indexPath.section]
    }
    
    func numberOfSections(in messagesCollectionView: MessageKit.MessagesCollectionView) -> Int {
        return messages.count
    }
}

