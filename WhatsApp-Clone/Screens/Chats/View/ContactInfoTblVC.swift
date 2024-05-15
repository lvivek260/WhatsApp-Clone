//
//  ContactInfoTblVC.swift
//  WhatsApp-Clone
//
//  Created by PHN MAC 1 on 15/05/24.
//

import UIKit

class ContactInfoTblVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func didEditBtnClick(_ sender: Any) {
        let editContactVC = AppStoryboard.chats.getViewController(EditContactVC.self)
        self.navigationController?.pushViewController(editContactVC, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

}
