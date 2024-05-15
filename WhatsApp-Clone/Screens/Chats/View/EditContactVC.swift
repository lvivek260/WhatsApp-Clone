//
//  EditContactVC.swift
//  WhatsApp-Clone
//
//  Created by PHN MAC 1 on 15/05/24.
//

import UIKit

class EditContactVC: UIViewController {

    @IBOutlet weak var saveBtn: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didCancelBtnClick(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func didSaveBtnClick(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
