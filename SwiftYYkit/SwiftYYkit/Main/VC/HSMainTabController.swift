//
//  HSMainTabController.swift
//  SwiftYYkit
//
//  Created by Han Jing on 2017/11/22.
//  Copyright © 2017年 hanzhifeng. All rights reserved.
//

import UIKit

class HSMainTabController: UITabBarController {
    var params: [String:AnyObject] = Dictionary()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.tabBar.tintColor = MAIN_RED
        let rankVC = HSRankViewController()
        let searchVC = HSSearchViewController()
        let pushVC = HSPushViewController()
        let moreVC = HSMoreViewController()
        let circeleVC = HSCircleViewController()
        self.setupChildVC(childVC: rankVC, title: "排行榜", image: "bio", selectedImage: "bio_red")
        self.setupChildVC(childVC: searchVC, title: "发现", image: "timer 2", selectedImage: "timer 2_red")
        self.setupChildVC(childVC: pushVC, title: "", image: "pencil", selectedImage: "pencil_red")
        self.setupChildVC(childVC: circeleVC, title: "圈子", image: "users two-2", selectedImage: "users two-2_red")
        self.setupChildVC(childVC: moreVC, title: "更多", image: "more", selectedImage: "more_red")
        
        

        
    }
    func setupChildVC(childVC:UIViewController,title: String, image: String,selectedImage: String){
        childVC.tabBarItem.title = title
        childVC.tabBarItem.image = UIImage.init(named: image)
        childVC.tabBarItem.selectedImage = UIImage.init(named: selectedImage)
       let nav =  UINavigationController.init(rootViewController: childVC)
        self.addChildViewController(nav)
        
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
