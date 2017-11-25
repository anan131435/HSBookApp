//
//  HSPushViewController.swift
//  SwiftYYkit
//
//  Created by Han Jing on 2017/11/22.
//  Copyright © 2017年 hanzhifeng. All rights reserved.
//

import UIKit

class HSPushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setNavigationBar()
    }
    func setNavigationBar(){
        let navigationView = UIView.init(frame: CGRect.init(x: 0, y: -20, width: KScreenWidth, height: 65))
        navigationView.backgroundColor = UIColor.white
        
        self.navigationController?.navigationBar.addSubview(navigationView)
        
        let addBookBtn = UIButton.init(frame: CGRect.init(x: 20, y: 20, width: KScreenWidth, height: 45))
        addBookBtn.setTitle("         新建书评", for: .normal)
        addBookBtn.setTitleColor(UIColor.black, for: .normal)
        addBookBtn.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        addBookBtn.contentHorizontalAlignment = .left
        addBookBtn.addTarget(self, action: #selector(pushNewBook), for: .touchUpInside)
        addBookBtn.setImage(UIImage.init(named: "plus circle"), for: .normal)
        navigationView.addSubview(addBookBtn)
    }
    func pushNewBook(){
        print("pushNewBook")
        let newBookVC = HSPushNewBookViewController()
        HSGeneralFactory.addTitleWitVC(target: newBookVC, leftTitle: "关闭", rightTitle: "发布")
        self.present(newBookVC, animated: true) { 
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
