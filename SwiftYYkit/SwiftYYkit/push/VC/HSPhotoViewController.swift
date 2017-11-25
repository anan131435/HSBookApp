//
//  HSPhotoViewController.swift
//  SwiftYYkit
//
//  Created by Han Jing on 2017/11/22.
//  Copyright © 2017年 hanzhifeng. All rights reserved.
//

import UIKit

@objc  protocol HSPhotoViewControllerDelegate {
    @objc optional func getImageFromHSPhotoViewController(image: UIImage)
}

class HSPhotoViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    var alert: UIAlertController?
    var picker: UIImagePickerController?
    weak var delegate: HSPhotoViewControllerDelegate?
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.modalPresentationStyle = .overFullScreen
        self.view.backgroundColor = UIColor.clear
        picker = UIImagePickerController()
        picker?.delegate = self
        picker?.allowsEditing = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if self.alert == nil{
            self.alert = UIAlertController.init(title: "", message: "", preferredStyle: .actionSheet)
            self.alert?.addAction(UIAlertAction.init(title: "从相册选择", style: .default, handler: { (action) in
                self.localPhoto()
            }))
            self.alert?.addAction(UIAlertAction.init(title: "打开相机", style: .default, handler: { (action) in
                self.takePhoto()
            }))
            self.alert?.addAction(UIAlertAction.init(title: "取消", style: .cancel, handler: { (action) in
                
            }))
            
            self.present(self.alert!, animated: true, completion: {
                
            })
        }
    }
    func takePhoto(){
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            self.picker?.sourceType = .camera
            self.present(self.picker!, animated: true, completion: { 
                
            })
            
        }else{
            let alertView = UIAlertController.init(title: "此机型无相机", message: "", preferredStyle: .alert)
            alertView.addAction(UIAlertAction.init(title: "关闭", style: .cancel, handler: { (action) in
                self.dismiss(animated: true, completion: { 
                    
                })
            }))
            
            self.present(alertView, animated: true, completion: { 
                
            })
            
        }
    }
    func localPhoto(){
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            self.picker?.sourceType = .photoLibrary
            self.present(self.picker!, animated: true, completion: {
                
            })
        }
    }
   //imagePickerVC delegate
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.picker?.dismiss(animated: true, completion: { 
            self.dismiss(animated: true, completion: { 
                
            })
        })
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        self.picker?.dismiss(animated: true, completion: { 
            self.dismiss(animated: true, completion: { 
                self.delegate?.getImageFromHSPhotoViewController!(image: image)
            })
        })
    }
}
