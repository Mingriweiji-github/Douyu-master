//
//  UIBarButtonItem-Extension.swift
//  Douyue-Swift-master
//
//  Created by Roc01 on 2018/11/19.
//  Copyright © 2018 Roc.iMac01. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    convenience init(imageName: String, highlightImage: String = "", size: CGSize = CGSize.zero) {
        let button = UIButton()
        if size == .zero {
            button.sizeToFit()
        }else {
            button.frame = CGRect(origin: .zero, size: size)
        }
        button.setImage(UIImage(named: imageName), for: .normal)
        button.setImage(UIImage(named: highlightImage), for: .highlighted)
        self.init(customView: button)
    }
}
