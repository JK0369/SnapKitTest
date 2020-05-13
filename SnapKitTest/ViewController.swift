//
//  ViewController.swift
//  SnapKitTest
//
//  Created by 김종권 on 2020/05/13.
//  Copyright © 2020 imustang. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    lazy var sampleView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        self.view.addSubview(sampleView)
        sampleView.snp.makeConstraints{ (make) in
            make.width.equalTo(self.view)
            make.height.equalTo(70)
            make.top.equalTo(self.view).offset(30)
        }
        
        
        self.view.addSubview(sampleView)
        sampleView.translatesAutoresizingMaskIntoConstraints = false
        sampleView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        sampleView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        sampleView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 30).isActive = true
        
    }
}

