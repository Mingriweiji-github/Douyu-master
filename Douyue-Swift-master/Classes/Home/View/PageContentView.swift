//
//  PageContentView.swift
//  Douyue-Swift-master
//
//  Created by Roc01 on 2018/11/19.
//  Copyright © 2018 Roc.iMac01. All rights reserved.
//

import UIKit
protocol PageContentViewDelegate {
    func pageContentView(_ contentView : PageContentView, progress : CGFloat, sourceIndex : Int, targetIndex : Int)
}

private let kCollectionNormalID = "kCollectionNormalID"
class PageContentView: UIView {

    fileprivate var childrens = [UIViewController]()
    
    fileprivate var parentVC: UIViewController?
    fileprivate var isForbidScrollDelegate: Bool = false
    
    var delegate: PageContentViewDelegate?
    
    lazy var collectionView: UICollectionView = {[weak self] in
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = (self?.bounds.size)!
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        collectionView.isPagingEnabled = true
        collectionView.bounces = true
        collectionView.showsVerticalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = UIColor.white
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: kCollectionNormalID)
        return collectionView
    }()
    
    init(frame: CGRect, childs: [UIViewController], parentVC: UIViewController) {
        
        self.childrens = childs
        
        self.parentVC = parentVC
        
        super.init(frame: frame)
        
        setupUI()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
}

extension PageContentView {
    private func setupUI() {
        for child in self.childrens {
            parentVC?.addChildViewController(child)
        }
        addSubview(self.collectionView)
        collectionView.frame = bounds
    }
}
//UICollectionViewDataSource
extension PageContentView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return childrens.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: kCollectionNormalID, for: indexPath)
        
        return cell
    }
}
//UICollectinViewDelegate
extension PageContentView: UICollectionViewDelegate {
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
    }
}
