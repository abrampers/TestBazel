//
//  ViewController.swift
//  TestBazel
//
//  Created by Abram Situmorang on 09/08/19.
//  Copyright © 2019 Tokopedia. All rights reserved.
//

import UIKit
#if DEBUG
import Vendor_RxSwift_RxSwift
import Vendor_SnapKit_SnapKit
#else
import RxSwift
import SnapKit
#endif

class ViewController: UIViewController {
    private let label: UILabel = {
        let label = UILabel()
        label.text = "TestBazel"
        label.textAlignment = .center
        
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let obs = Observable.just("hahahahah")
        
        view.addSubview(label)
        label.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
    }
}

