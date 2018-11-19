//
//  Common.swift
//  Douyue-Swift-master
//
//  Created by Roc01 on 2018/11/19.
//  Copyright © 2018 Roc.iMac01. All rights reserved.
//

import UIKit


let kScreenW = UIScreen.main.bounds.width
let kScreenH = UIScreen.main.bounds.height

let iPhoneX = (kScreenW == 375.0 && kScreenH == 812.0 ? true : false)
//statusBar
//let kStatusBarH: CGFloat = (iPhoneX ? (20 + 24) : 20.0)
let kNavigationBarH: CGFloat = (iPhoneX ? 88.0 : 64.0)
//tabBar
let kTabBarH : CGFloat = (iPhoneX ? (49.0 + 34.0) : 49.0)
let kTabBarSafeMargin: CGFloat = (iPhoneX ? 34.0 : 0)



//获取屏幕的高
//let IPhone_SCREEN_HEIGHT = UIScreen.main.bounds.height
////获取屏幕宽
//let IPhone_SCREEN_WIDTH = UIScreen.main.bounds.width
////iPhone X 宏定义
//let iPhoneX = (IPhone_SCREEN_WIDTH == 375.cgfloat && IPhone_SCREEN_HEIGHT == 812.cgfloat ? true : false)
////适配iPhone X 状态栏高度
//let IPhone_StatusBarHeight = (iPhoneX ? 44.cgfloat : 20.cgfloat)
//// 适配iPhone X Tabbar高度
//let IPhone_TabbarHeight = (iPhoneX ? (49.cgfloat+34.cgfloat) : 49.cgfloat)
//// 适配iPhone X Tabbar距离底部的距离
//let IPhone_TabbarSafeBottomMargin = (iPhoneX ? 34.cgfloat : 0.cgfloat)
//// 适配iPhone X 导航栏高度
//let IPhone_NavHeight = (iPhoneX ? 88.cgfloat : 64.cgfloat)


