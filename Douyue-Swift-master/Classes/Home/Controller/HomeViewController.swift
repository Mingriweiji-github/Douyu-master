//
//  HomeViewController.swift
//  Douyue-Swift-master
//
//  Created by Roc01 on 2018/11/19.
//  Copyright © 2018 Roc.iMac01. All rights reserved.
//

import UIKit
private let kTitleViewH: CGFloat = 40
class HomeViewController: UIViewController {

    private lazy var titleView: PageTitleView = {
        let titleView = PageTitleView(frame: CGRect(x: 0, y: kNavigationBarH, width: kScreenW, height: kTitleViewH), titles: ["推荐","分类","全部","娱乐"])
        return titleView
    }()
    lazy var pageContentView: PageContentView = {
        let frameY = kNavigationBarH + kTitleViewH
        var childrens = [UIViewController]()
        for _ in 0..<3 {
            let child = UIViewController()
            child.view.backgroundColor = UIColor(r: CGFloat(arc4random_uniform(255)), g: CGFloat(arc4random_uniform(255)), b: CGFloat(arc4random_uniform(255)), a: 1.0)
            childrens.append(child)
        }
        let pageContentView = PageContentView(frame: CGRect(x: 0, y: frameY, width: kScreenW, height: kScreenH - frameY - kTabBarH), childs: childrens, parentVC: self)
        return pageContentView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

}


extension HomeViewController {
    private func setupUI() {
        setupNavigation()
        view.addSubview(titleView)
        view.addSubview(pageContentView)
    }
    
    private func setupNavigation() {
        let size = CGSize(width: 40, height: 40)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(imageName: "logo", highlightImage: "", size: size)
        
        let scannerItem = UIBarButtonItem.init(imageName: "Image_scan", highlightImage: "Image_scan_click", size: size)
        let searchItem = UIBarButtonItem.init(imageName: "btn_search", highlightImage: "btn_search_clicked", size: size)
        let historyItem = UIBarButtonItem.init(imageName: "image_my_history", highlightImage: "Image_my_history_click", size: size)
        navigationItem.rightBarButtonItems = [historyItem,searchItem,scannerItem]
    }
    private func setupContentView() {
        
    }
    
}
