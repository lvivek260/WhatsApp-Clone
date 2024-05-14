//
//  ChatDetailVC.swift
//  WhatsApp-Clone
//
//  Created by PHN MAC 1 on 14/05/24.
//

import UIKit

class ChatDetailVC: UIViewController {
    var chatData: ChatModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        addNavigationTitleHeaderView()
    }
    
    private func addNavigationTitleHeaderView(){
        let chatDetailHeader = ChatDetailHeader(frame: .init(x: 0, y: 0, width:  200, height: 100))
        chatDetailHeader.chatData = self.chatData
        navigationItem.titleView = chatDetailHeader
    }
}
