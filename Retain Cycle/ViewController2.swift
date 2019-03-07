//
//  ViewController2.swift
//  Retain Cycle
//
//  Created by Senfonico Dev on 22.02.2019.
//  Copyright © 2019 Senfonico Dev. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    var vc1: ViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .purple
        self.title  = "VC2"
        print("didload VC2")
    }
    
    deinit {
        print("deinit VC2")
    }
}
