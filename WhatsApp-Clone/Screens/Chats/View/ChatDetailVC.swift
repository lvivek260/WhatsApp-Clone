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
    let viewModel = ChatViewModel()
    
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
        
        self.messages = viewModel.getMessages(sender1: suraj, sender2: vivek)
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

