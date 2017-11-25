//
//  HZTableView.swift
//  SwiftYYkit
//
//  Created by Han Jing on 2017/11/21.
//  Copyright © 2017年 hanzhifeng. All rights reserved.
//

import UIKit

class HZTableView: UITableView {

    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    deinit {
        print("HZTableView deinit")
    }
    
}
