//
//  MainTabBarController.swift
//  Douyue-Swift-master
//
//  Created by Roc01 on 2018/11/19.
//  Copyright © 2018 Roc.iMac01. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addChildVCs(storyName: "Home")
        addChildVCs(storyName: "Follow")
        addChildVCs(storyName: "Live")
        addChildVCs(storyName: "Profile")
    }
    
    private func addChildVCs(storyName: String) {

        let vc = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()!
        
        addChildViewController(vc)
    }
}


