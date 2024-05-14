//
//  CallsModel.swift
//  WhatsApp-Clone
//
//  Created by PHN MAC 1 on 14/05/24.
//

import UIKit

struct CallsModel{
    let userName: String
    let userImg: UIImage
    let callType: CallType
    let date: String
}

enum CallType: String{
    case outgoing = "outgoing"
    case incoming = "incoming"
    case missed = "missed"
}
