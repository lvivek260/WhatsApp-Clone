//
//  CameraVC.swift
//  WhatsApp-Clone
//
//  Created by PHN MAC 1 on 13/05/24.
//

import UIKit

class CameraVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a view
        let subview1 = UIView()
        subview1.backgroundColor = .blue
        subview1.translatesAutoresizingMaskIntoConstraints = false // Important for programmatically adding constraints
        
        let subview2 = UIView()
        subview2.backgroundColor = .orange
        subview2.translatesAutoresizingMaskIntoConstraints = false // Important for programmatically adding constraints
        
        // Add the subview to the main view
        view.addSubview(subview1)
        view.addSubview(subview2)
        
        // Define constraints
        NSLayoutConstraint.activate([
            subview1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            subview1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            subview1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            subview1.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        NSLayoutConstraint.activate([
            subview2.topAnchor.constraint(equalTo: subview1.bottomAnchor, constant: 20),
            subview2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            subview2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            subview2.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
}


