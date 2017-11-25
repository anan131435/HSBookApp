//
//  ViewController.swift
//  SwiftYYkit
//
//  Created by Han Jing on 2017/11/21.
//  Copyright © 2017年 hanzhifeng. All rights reserved.
//

import UIKit
import YYKit
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
    }
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            super.touchesBegan(touches, with: event)
            let nextVC = HZNextViewController()
            self.navigationController?.pushViewController(nextVC, animated: true)
    }

}

