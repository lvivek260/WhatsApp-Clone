//
//  ChatDetailHeader.swift
//  WhatsApp-Clone
//
//  Created by PHN MAC 1 on 14/05/24.
//

import UIKit

class ChatDetailHeader: UIView {
    @IBOutlet var containerView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commitInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commitInit()
    }
    
    private func commitInit(){
        Bundle.main.loadNibNamed(ChatDetailHeader.id, owner: self,options: nil)
        addSubview(containerView)
        containerView.frame = self.bounds
        containerView.autoresizingMask = [ .flexibleHeight, .flexibleWidth ]
    }
}
