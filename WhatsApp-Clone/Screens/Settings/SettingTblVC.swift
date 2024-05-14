//
//  SettingTblVC.swift
//  WhatsApp-Clone
//
//  Created by PHN MAC 1 on 14/05/24.
//

import UIKit

class SettingTblVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    private func showAlertSheet(){
        let alertSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let mail = UIAlertAction(title: "Mail", style: .default)
        let message = UIAlertAction(title: "Message", style: .default)
        let more = UIAlertAction(title: "More", style: .default)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        alertSheet.addAction(mail)
        alertSheet.addAction(message)
        alertSheet.addAction(more)
        alertSheet.addAction(cancel)
        present(alertSheet, animated: true)
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var selectedVC: UIViewController?
        switch indexPath.section{
        case 0: selectedVC = AppStoryboard.settings.getViewController(EditProfileTblVC.self)
            
        case 1:
            switch indexPath.row{
            case 0: selectedVC = AppStoryboard.settings.getViewController(StarredMessagesVC.self)
            case 1: break
            default: break
            }
            
        case 2:
            switch indexPath.row{
            case 0: selectedVC = AppStoryboard.settings.getViewController(AccountTblVC.self)
            case 1: selectedVC = AppStoryboard.settings.getViewController(ChatsTblVC.self)
            case 2: selectedVC = AppStoryboard.settings.getViewController(NotificationTblVC.self)
            case 3: selectedVC = AppStoryboard.settings.getViewController(DataStoragUsageTblVC.self)
            default: break
            }
            
        case 3:
            switch indexPath.row{
            case 0:
                if let url = URL(string: "https://faq.whatsapp.com/"){
                    UIApplication.shared.open(url)
                }
            case 1: showAlertSheet()
            default: break
            }
            
        default: break
        }
        
        //Navigate Particular Screens
        if let selectedVC{
            selectedVC.hidesBottomBarWhenPushed = true
            navigationController?.pushViewController(selectedVC, animated: true)
        }
    }

}
