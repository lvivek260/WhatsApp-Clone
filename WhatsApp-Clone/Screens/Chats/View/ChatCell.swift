//
//  ChatCell.swift
//  WhatsApp-Clone
//
//  Created by PHN MAC 1 on 14/05/24.
//

import UIKit

class ChatCell: UITableViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblMsgText: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var msgStatusImg: UIImageView!
    
    var chat: ChatModel?{
        didSet{
            guard let chat else { return }
            imgView.image = chat.image
            lblName.text = chat.userName
            lblMsgText.text = chat.lastMsg
            lblDate.text = chat.date
            if let imgData = getMsgStatusImg(status: chat.msgStatus){
                msgStatusImg.isHidden = false
                msgStatusImg.image = imgData.0
                msgStatusImg.tintColor = imgData.1
            }else{
                msgStatusImg.isHidden = true
            }
           
        }
    }
    
    private func getMsgStatusImg(status: MassageStatus)->(UIImage, UIColor)?{
        switch status{
        case .NotReadText: return nil
        case .readText: return (.read, .tintColor)
        case .photo: return (UIImage(systemName: "camera.fill")!, .secondaryLabel)
        case .voice: return (UIImage(systemName: "mic.fill")!, .systemGreen)
        }
    }
    
}
