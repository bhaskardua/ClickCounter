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
        
        //label
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label=label
        
        //button
        
        var button = UIButton()
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
    }


}

