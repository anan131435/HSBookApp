//
//  HSBookTitleView.swift
//  SwiftYYkit
//
//  Created by Han Jing on 2017/11/22.
//  Copyright © 2017年 hanzhifeng. All rights reserved.
//

import UIKit
import JVFloatLabeledTextField

@objc protocol HSBookTitleViewDelegate{
    @objc optional func bookTitleCoverDidClick()
}

class HSBookTitleView: UIView {
    var bookCover: UIButton?
    var bookName: JVFloatLabeledTextField?
    var bookEditor: JVFloatLabeledTextField?
    weak var delegate: HSBookTitleViewDelegate?
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupChildViews()
    }
    func setupChildViews(){
        bookCover = UIButton.init(frame: CGRect.init(x: 10, y: 8, width: 110, height: 140))
        bookCover?.setImage(UIImage.init(named: "Cover"), for: .normal)
        bookCover?.addTarget(self, action: #selector(HSBookTitleView.bookCoverClick), for: .touchUpInside)
        self.addSubview(bookCover!)
        
        bookName = JVFloatLabeledTextField.init(frame: CGRect.init(x: 128, y: 8+40, width: KScreenWidth - 128 - 15, height: 30))
        bookEditor = JVFloatLabeledTextField.init(frame: CGRect.init(x: 128, y: 8+40+70, width: KScreenWidth - 128 - 15, height: 30))
        bookName?.placeholder = "书名"
        bookEditor?.placeholder = "作者"
        bookName?.floatingLabelFont = UIFont.systemFont(ofSize: 14)
        bookEditor?.floatingLabelFont = UIFont.systemFont(ofSize: 14)
        bookName?.font = UIFont.systemFont(ofSize: 14)
        bookEditor?.font = UIFont.systemFont(ofSize: 14)
        self.addSubview(bookEditor!)
        self.addSubview(bookName!)
        
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func bookCoverClick(){
        self.delegate?.bookTitleCoverDidClick!()
    }

}
