//
//  ViewController.swift
//  CocoaLearnSwift
//
//  Created by administrator on 16/2/16.
//  Copyright (c) 2016年 com.dreamsoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var statusLabel: UILabel!

    @IBOutlet weak var right: UIButton!
    @IBOutlet weak var left: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPressed(sender: UIButton) {
        let title = sender.titleForState(.Normal)!
        
        let plainText = "\(title) button pressed"
        
        let styledText = NSMutableAttributedString (string: plainText)
        let attributes = [
            NSFontAttributeName : UIFont.boldSystemFontOfSize(statusLabel.font.pointSize)
        ]
        let  nameRange = (plainText as NSString).rangeOfString(title)
        styledText.addAttributes(attributes, range: nameRange)
        
        statusLabel.attributedText = styledText
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

