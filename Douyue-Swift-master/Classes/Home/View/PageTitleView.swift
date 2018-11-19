//
//  PageTitleView.swift
//  Douyue-Swift-master
//
//  Created by Roc01 on 2018/11/19.
//  Copyright © 2018 Roc.iMac01. All rights reserved.
//

import UIKit
private let kScrollLineH:CGFloat = 2
private let kNormalColor: (CGFloat, CGFloat, CGFloat) = (85,85,85)
private let kSelectedColor: (CGFloat, CGFloat, CGFloat) = (255,188,188)

class PageTitleView: UIView {
    var currentIndex = 0
    var titles: [String]
    lazy var titleLabels: [UILabel] = [UILabel]()
    lazy var scrollView: UIScrollView = {
       let scrollV = UIScrollView()
        scrollV.showsVerticalScrollIndicator = false
        scrollV.showsHorizontalScrollIndicator = false
        scrollV.scrollsToTop = false
        return scrollV
    }()
    lazy var scrollLine: UIView = {
       let label = UILabel()
        label.backgroundColor = UIColor.red
        return label
    }()
    
    init(frame: CGRect, titles: [String]) {
        self.titles = titles
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension PageTitleView {
    func setupUI() {
        scrollView.frame = bounds
        addSubview(scrollView)
        
        setupTitleLabels()
        setupScrollLineAndBottomLine()
    }
    private func setupTitleLabels() {
        
        let labelW = frame.width / CGFloat(titles.count)
        let labelH = frame.height - CGFloat(kScrollLineH)
        for (index,value) in titles.enumerated() {
            let label = UILabel()
            label.tag = index
            label.text = value
            label.font = UIFont.systemFont(ofSize: 16.0)
            label.textColor = UIColor(r: kNormalColor.0, g: kNormalColor.1, b: kNormalColor.2, a: 1)
            label.textAlignment = .center
            
            let labelX: CGFloat = labelW * CGFloat(index)
            label.frame = CGRect(x: labelX, y: 0, width: labelW, height: labelH)
            titleLabels.append(label)
            scrollView.addSubview(label)
            //给label添加手势
            label.isUserInteractionEnabled = true
//            let tapGesture = UITapGestureRecognizer(target: self, action: #selector())
//            label.addGestureRecognizer(tapGesture)
        }
    }
    private func setupScrollLineAndBottomLine() {
        let bottomLine = UILabel()
        bottomLine.backgroundColor = UIColor(r: kNormalColor.0, g: kNormalColor.1, b: kNormalColor.2, a: 1)
        bottomLine.frame = CGRect(x: 0, y: frame.height - 0.5, width: kScreenW, height: 0.5)
        scrollView.addSubview(bottomLine)
        
        //设置默认
        guard let firstLabel = titleLabels.first else {
            return
        }
        firstLabel.textColor = UIColor(r: kSelectedColor.0, g: kSelectedColor.1, b: kSelectedColor.2, a: 1)
        scrollLine.frame = CGRect(x: firstLabel.frame.origin.x, y: frame.height - kScrollLineH, width: firstLabel.frame.width, height: kScrollLineH)
    }
}
