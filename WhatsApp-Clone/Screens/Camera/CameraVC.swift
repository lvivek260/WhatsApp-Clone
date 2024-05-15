//
//  CameraVC.swift
//  WhatsApp-Clone
//
//  Created by PHN MAC 1 on 13/05/24.
//

import UIKit

class CameraVC: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
        openCamera()
    }
    
    private func openCamera(){
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
            self.present(imagePicker, animated: true, completion: nil)
        } else {
            self.showAlertMessage(title: "Camera Not Available", message: "Sorry, camera is not available on this device."){
                self.tabBarController?.tabBar.isHidden = false
                self.tabBarController?.selectedIndex = 3
            }
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.tabBarController?.tabBar.isHidden = false
        self.tabBarController?.selectedIndex = 3
    }
    
}


