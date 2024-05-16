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
            .init(sender: suraj,
                  messageId: "1",
                  sentDate: Date().addingTimeInterval(-86400),
                  kind: .text("Hello Vivek Kay Kartoy")),
            
                .init(sender: vivek,
                      messageId: "2",
                      sentDate: Date().addingTimeInterval(-76400),
                      kind: .text("kay nahi re nivant aahe mi tu kay kartoy")),
            
                .init(sender: suraj,
                      messageId: "3",
                      sentDate: Date().addingTimeInterval(-66400),
                      kind: .text("are aik na maze friend challe ahe tuzha booking karu ka?")),
            
                .init(sender: vivek,
                      messageId: "4",
                      sentDate: Date().addingTimeInterval(-56400),
                      kind: .text("ho jaychay re pn paise kami ahet")),
            
                .init(sender: suraj,
                      messageId: "5",
                      sentDate: Date().addingTimeInterval(-46400),
                      kind: .text("yevdhach na mi deto jaun ya")),
            
                .init(sender: vivek,
                      messageId: "6",
                      sentDate: Date().addingTimeInterval(-36400),
                      kind: .text("ok ok br br")),
            
                .init(sender: vivek,
                      messageId: "7",
                      sentDate: Date().addingTimeInterval(-26400),
                      kind: .photo(ImageSend(placeholderImage: #imageLiteral(resourceName: "myImage") , size: .init(width: 150, height: 150))))
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
