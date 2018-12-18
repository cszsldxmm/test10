//
//  ViewController.swift
//  animation
//
//  Created by 7 on 2018/12/17.
//  Copyright © 2018 7. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let view = UIView(frame: CGRect(x: 300, y: 100, width: 100, height: 100))
        view.backgroundColor = UIColor.orange
        self.view.addSubview(view)
        UIView.animate(withDuration: 3, delay: 0, options: [.repeat, .autoreverse], animations: {
            view.frame = CGRect(x: 0, y: 20, width: 10, height: 10)
            view.backgroundColor = UIColor.yellow
            view.transform = view.transform.rotated(by: CGFloat.pi)
        }, completion: nil)
    }

}

