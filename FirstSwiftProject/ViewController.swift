//
//  ViewController.swift
//  FirstSwiftProject
//
//  Created by 夏剑波 on 2018/3/21.
//  Copyright © 2018年 xxdd. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    lazy var box = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let label = UILabel.init();
        label.text = "text";
        label.textColor = UIColor.red;
        label.font = UIFont.systemFont(ofSize: 18);
        self.view.addSubview(label);
        label.snp.makeConstraints { (make) -> Void in
            make.centerX.equalToSuperview()
            make.width.equalTo(100)
            make.height.equalTo(20)
            make.top.equalTo(self.view).offset(40)
        }
        
        let button = UIButton.init(type: UIButtonType.custom)
        button.setTitle("action", for: UIControlState.normal)
        button.backgroundColor = UIColor.purple
        self.view.addSubview(button)
        button.snp.makeConstraints { (make) -> Void in
            make.width.height.equalTo(50)
            make.left.equalTo(self.view).offset(80)
            make.top.equalTo(label.snp.bottom).offset(50)
        }
        
        box.backgroundColor = UIColor.blue
        self.view.addSubview(box)
        box.snp.makeConstraints { (make) -> Void in
            make.width.equalTo(60)
            make.height.equalTo(20)
            make.centerX.equalToSuperview()
            make.top.equalTo(button.snp.bottom).offset(70)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

