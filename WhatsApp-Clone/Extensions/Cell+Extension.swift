//
//  Cell+Extension.swift
//  Instagram-Clone
//
//  Created by PHN MAC 1 on 22/04/24.
//

import UIKit

protocol IdNibLoadable{
    static var id: String { get }
    static var nib: UINib { get }
}

extension IdNibLoadable{
    static var id: String {
        return String(describing: self)
    }
    
    static var nib: UINib {
        return UINib(nibName: id, bundle: nil)
    }
}

extension UIViewController: IdNibLoadable { }

extension UIView: IdNibLoadable { }


