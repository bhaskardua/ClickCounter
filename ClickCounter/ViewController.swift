//
//  ViewController.swift
//  ClickCounter
//
//  Created by Bhaskar Dua on 4/4/16.
//  Copyright © 2016 Bhaskar Dua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //label
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        
        self.view.addSubview(label)
        // Do any additional setup after loading the view, typically from a nib.
    }


}

