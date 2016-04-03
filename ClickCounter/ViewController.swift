//
//  ViewController.swift
//  ClickCounter
//
//  Created by Bhaskar Dua on 4/4/16.
//  Copyright © 2016 Bhaskar Dua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
    }


}

