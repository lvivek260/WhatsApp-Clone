//
//  ChatsVC.swift
//  WhatsApp-Clone
//
//  Created by PHN MAC 1 on 13/05/24.
//

import UIKit

class ChatsVC: UIViewController {

    @IBOutlet weak var chatTblView: UITableView!{
        didSet{
            chatTblView.register(ChatCell.nib, forCellReuseIdentifier: ChatCell.id)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

extension ChatsVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ChatCell.id, for: indexPath) as? ChatCell else{
            fatalError()
        }
        return cell
    }
}

extension ChatsVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let more = UIContextualAction(style: .normal, title: "More") { action, view, boolValue in
            self.showActionSheet()
        }
       
        let archive = UIContextualAction(style: .normal, title: "Archive") { action, view, boolValue in
            
        }
        archive.backgroundColor = .systemIndigo
        
        return UISwipeActionsConfiguration(actions: [archive, more])
    }
    
    private func showActionSheet(){
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let muteBtn = UIAlertAction(title: "Mute", style: .default) { alertAction in
            
        }
        let contactInfoBtn = UIAlertAction(title: "Contact Info", style: .default) { alertAction in
            
        }
        let exportChatBtn = UIAlertAction(title: "Export Chat", style: .default) { alertAction in
            
        }
        let clearChatBtn = UIAlertAction(title: "Clear Chat", style: .default) { alertAction in
            
        }
        let deleteChatBtn = UIAlertAction(title: "Delete Chat", style: .destructive) { alertAction in
            
        }
        let cancelBtn = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(muteBtn)
        alert.addAction(contactInfoBtn)
        alert.addAction(exportChatBtn)
        alert.addAction(clearChatBtn)
        alert.addAction(deleteChatBtn)
        alert.addAction(cancelBtn)
        present(alert, animated: true)
    }
}
