//
//  CallsVC.swift
//  WhatsApp-Clone
//
//  Created by PHN MAC 1 on 13/05/24.
//

import UIKit

class CallsVC: UIViewController {

    @IBOutlet weak var callSegment: UISegmentedControl!
    @IBOutlet weak var callsTableView: UITableView!{
        didSet{
            callsTableView.register(CallTableViewCell.nib, forCellReuseIdentifier: CallTableViewCell.id)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func editCallBtnClick(_ sender: UIBarButtonItem) {
        if callsTableView.isEditing{
            callsTableView.setEditing(false, animated: true)
            sender.title = "Edit"
        }else{
            callsTableView.setEditing(true, animated: true)
            sender.title = "Done"
        }
    }
}

extension CallsVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CallTableViewCell.id, for: indexPath) as? CallTableViewCell else{
            fatalError()
        }
        return cell
    }
}

extension CallsVC: UITableViewDelegate{
    
}
