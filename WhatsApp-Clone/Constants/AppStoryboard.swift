//
//  AppStoryboard.swift
//  Instagram-Clone
//
//  Created by PHN MAC 1 on 22/04/24.
//

import UIKit

enum AppStoryboard: String{
    case login = "Login"
    case main = "Main"
    case profile = "Profile"
    
    func getViewController<T: UIViewController>(_ viewController: T.Type) -> T{
        let storyboard = UIStoryboard(name: self.rawValue, bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: String(describing: viewController)) as? T else{
            fatalError(String(describing: viewController) + "Not Found")
        }
        return vc
    }
}
