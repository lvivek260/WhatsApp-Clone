//
//  UIViewController+Extension.swift
//  Instagram-Clone
//
//  Created by PHN MAC 1 on 22/04/24.
//

import UIKit

extension UIViewController{
    func getWindow() -> UIWindow?{
        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        let window = windowScene?.windows.first
        return window
    }
    
    func showAlertMessage(title: String = "", message: String = "",handler: (()->Void)? = nil){
        let alertMessage = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .cancel){_ in
            if let handler{ handler() }
        }
        alertMessage.addAction(ok)
        self.present(alertMessage, animated: true)
    }
}
