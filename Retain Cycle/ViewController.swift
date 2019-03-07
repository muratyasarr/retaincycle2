//
//  ViewController.swift
//  Retain Cycle
//
//  Created by Senfonico Dev on 20.02.2019.
//  Copyright © 2019 Senfonico Dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var vc2: ViewController2!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = .white
        self.title  = "VC1"
        addButton()
    }
    
    private func addButton() {
        let button = UIButton(type: .system)
        button.setTitle("Go To VC 2", for: .normal)
        self.view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        button.addTarget(self, action: #selector(goToVC2), for: .touchUpInside)
    }
    
    @objc func goToVC2() {
        let vc2 = ViewController2()
        vc2.vc1 = self
        self.vc2 = vc2
        self.navigationController?.pushViewController(vc2, animated: true)
    }
    
    deinit {
        print("deinit VC1")
    }


}

