//
//  ChatModel.swift
//  WhatsApp-Clone
//
//  Created by PHN MAC 1 on 14/05/24.
//

import UIKit

struct ChatModel{
    var image: UIImage
    var userName: String
    var lastMsg: String
    var msgStatus: MassageStatus
    var date: String
}

enum MassageStatus{
    case voice
    case photo
    case readText
    case NotReadText
}
