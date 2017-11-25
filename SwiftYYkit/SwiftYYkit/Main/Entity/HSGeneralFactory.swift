//
//  HSGeneralFactory.swift
//  SwiftYYkit
//
//  Created by Han Jing on 2017/11/22.
//  Copyright © 2017年 hanzhifeng. All rights reserved.
//

import UIKit

class HSGeneralFactory: NSObject {
    static func addTitleWitVC(target: UIViewController,leftTitle:String = "关闭",rightTitle: String = "确定"){
        let leftBtn = UIButton.init(frame: CGRect.init(x: 10, y: 20, width: 40, height: 20))
        leftBtn.setTitle(leftTitle, for: .normal)
        leftBtn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        leftBtn.contentHorizontalAlignment = .left
        leftBtn.setTitleColor(MAIN_RED, for: .normal)
        
        leftBtn.addTarget(target, action: #selector(HSPushNewBookViewController.closeClickEvent), for: .touchUpInside)
//        leftBtn.addTarget(target, action: Selector("closeClickEvent"), for: .touchUpInside)
        target.view.addSubview(leftBtn)
        
        
        let rightBtn = UIButton.init(frame: CGRect.init(x: KScreenWidth - 50, y: 20, width: 40, height: 20))
        rightBtn.setTitle(rightTitle, for: .normal)
        rightBtn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        rightBtn.contentHorizontalAlignment = .right
        rightBtn.setTitleColor(MAIN_RED, for: .normal)
        rightBtn.addTarget(target, action: #selector(HSPushNewBookViewController.sureClickEvent), for: .touchUpInside)
        target.view.addSubview(rightBtn)
        
        
    }
}
