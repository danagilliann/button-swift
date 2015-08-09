//
//  ViewController.swift
//  buttonSwift
//
//  Created by Dana on 8/8/15.
//  Copyright (c) 2015 Dana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // important to have both the button and the label since the label is on top of button
        let donateLabel = UILabel()
        let donateButton = UIButton()
        
        donateLabel.text = "Donate"
        donateLabel.font = UIFont(name: "SourceSansPro-ExtraLight", size: 45)
        donateLabel.textColor = UIColor.whiteColor()
        donateLabel.textAlignment = .Center
        donateLabel.numberOfLines = 5
        donateLabel.frame = CGRectMake(60, 450, 200, 80) // x-coordinate, y-coordinate, width, height. This should be the same as the button
        donateLabel.backgroundColor = UIColor.blackColor() // background color should be on the label
        
        //donateButton.setTitle("Donate", forState: .Normal)
        donateButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        donateButton.frame = CGRectMake(60, 450, 200, 80)
        donateButton.addTarget(self, action: "pressed:", forControlEvents: .TouchUpInside)
        //donateButton.backgroundColor = UIColor.blackColor()

        
        self.view.addSubview(donateLabel)
        self.view.addSubview(donateButton)
    }
    
    func pressed(sender: UIButton!) {
        if let url = NSURL(string: "https://www.paypal.com/webapps/mpp/search-cause?charityId=13947&s=3") {
            UIApplication.sharedApplication().openURL(url)
        }
        
        //var alertView = UIAlertView();
        //alertView.addButtonWithTitle("Ok");
        //alertView.title = "title";
        //alertView.message = "message";
        //alertView.show();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

