//
//  HZNextViewController.swift
//  SwiftYYkit
//
//  Created by Han Jing on 2017/11/21.
//  Copyright © 2017年 hanzhifeng. All rights reserved.
//

import UIKit

class HZNextViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var tableView: HZTableView?
    var dataSource: [String] = Array()
    let cellIdentifier: String = "cell"
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let tmpTableView = HZTableView.init(frame: self.view.bounds, style: .plain)
        self.tableView = tmpTableView
        self.tableView?.dataSource = self
        self.tableView?.delegate = self
        self.tableView?.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: cellIdentifier)
        self.view.addSubview(tmpTableView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initData(){
        for _ in 0..<100 {
            let title = "name"
            self.dataSource.append(title)
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataSource.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let count = self.dataSource.count
        guard count <= indexPath.row else {
            return UITableViewCell()
        }
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = self.dataSource[indexPath.row]
        return cell
    }

    deinit {
        print("nextVC deinit")
    }
}
