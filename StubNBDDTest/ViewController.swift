//
//  ViewController.swift
//  StubNBDDTest
//
//  Created by Anak Mirasing on 2/4/2559 BE.
//  Copyright © 2559 iGROOMGRiM. All rights reserved.
//

import UIKit
import SnapKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    
    var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let pullButton = UIButton()
        self.view.addSubview(pullButton)
        pullButton.setTitle("Pull", forState: .Normal)
        pullButton.backgroundColor = UIColor.brownColor()
        pullButton.setTitleColor(UIColor.grayColor(), forState: .Highlighted)
        pullButton.snp_makeConstraints { (make) -> Void in
            make.width.equalTo(132)
            make.height.equalTo(44)
            make.left.equalTo(20)
            make.top.equalTo(22)
        }
        
        
        let tableView = UITableView()
        self.view.addSubview(tableView)
        tableView.registerClass(PostCell.self, forCellReuseIdentifier: PostCell.REUSE_ID)
        tableView.snp_makeConstraints { (make) -> Void in
            make.width.equalTo(self.view)
            make.height.equalTo(self.view.snp_height).offset(-100)
            make.top.equalTo(100)
        }
        
        let items = Observable.just(["a","b","c"])
        items
            .bindTo(tableView.rx_itemsWithCellIdentifier(PostCell.REUSE_ID, cellType: PostCell.self)) { (row, element, cell) in
                cell.textLabel?.text = "\(element) @ row \(row)"
            }
            .addDisposableTo(disposeBag)
        
        
        tableView
            .rx_modelSelected(String)
            .subscribeNext { value in
                print("\(value)")
            }
            .addDisposableTo(disposeBag)
        
        pullButton.rx_tap.subscribeNext {

        }.addDisposableTo(disposeBag)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    var postViewModel = PostViewModel()
}

