//
//  ChatDetailVC.swift
//  WhatsApp-Clone
//
//  Created by PHN MAC 1 on 14/05/24.
//

import UIKit

class ChatDetailVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let chatDetailHeader = ChatDetailHeader(frame: .init(x: 0, y: 0, width:  200, height: 100))
        let myView = UIView(frame: .init(x: 0, y: 0, width: 200, height: 100))
        myView.backgroundColor = .red
        navigationItem.titleView = chatDetailHeader
    }


}
