//
//  HSPushNewBookViewController.swift
//  SwiftYYkit
//
//  Created by Han Jing on 2017/11/22.
//  Copyright © 2017年 hanzhifeng. All rights reserved.
//

import UIKit

class HSPushNewBookViewController: UIViewController,HSBookTitleViewDelegate,HSPhotoViewControllerDelegate {
    var bookTitle: HSBookTitleView?
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        self.setupSubviews()
    }
    
    func setupSubviews(){
        bookTitle = HSBookTitleView.init(frame: CGRect.init(x: 0, y: 40, width: KScreenWidth, height: 160))
        bookTitle?.delegate = self
        self.view.addSubview(bookTitle!)
    }
    
    func closeClickEvent(){
        self.dismiss(animated: true) { 
            
        }
    }
    func sureClickEvent(){
        
    }
    func bookTitleCoverDidClick() {
        let photoVC = HSPhotoViewController()
        photoVC.delegate = self
        self.present(photoVC, animated: true) { 
            
        }
    }
    func getImageFromHSPhotoViewController(image: UIImage) {
        self.bookTitle?.bookCover?.setImage(image, for: .normal)
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
