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
    var label2:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //label
        let label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label=label
        
        //label2
        let label2 = UILabel()
        label2.frame = CGRectMake(210, 150, 60, 60)
        label2.text = "0"
        
        self.view.addSubview(label2)
        self.label2 = label2
        
        //button
        
        let button = UIButton()
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
    
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), forControlEvents: UIControlEvents.TouchUpInside)
        button.addTarget(self, action: #selector(ViewController.changeBackgroundColor), forControlEvents: UIControlEvents.TouchUpInside)
        
        //decrementButton
        
        let decrementButton = UIButton()
        decrementButton.frame = CGRectMake(250, 250, 100, 60)
        decrementButton.setTitle("Decrement", forState: .Normal)
        decrementButton.setTitleColor(UIColor.redColor(), forState: .Normal)
        self.view.addSubview(decrementButton)
        
        decrementButton.addTarget(self, action: #selector(ViewController.decrementCount), forControlEvents: UIControlEvents.TouchUpInside)
        decrementButton.addTarget(self, action: #selector(ViewController.changeBackgroundColor), forControlEvents: UIControlEvents.TouchUpInside)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    func decrementCount(){
        self.count -= 1
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    func changeBackgroundColor(){
        if count % 2 == 0 {
            self.view.backgroundColor = UIColor.whiteColor()
        } else {
            self.view.backgroundColor = UIColor.lightGrayColor()
        }
    }


}

