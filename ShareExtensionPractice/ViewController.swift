//
//  ViewController.swift
//  ShareExtensionPractice
//
//  Created by Grady Zhuo on 2014/7/20.
//  Copyright (c) 2014年 Grady Zhuo. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBAction func openShareMenu(sender:AnyObject){
        
        var activityViewController = UIActivityViewController(activityItems: ["Hello world", NSURL(string: "http://www.google.com")], applicationActivities: nil)
        activityViewController.excludedActivityTypes = [UIActivityTypeAirDrop,UIActivityTypeAddToReadingList,UIActivityTypeAssignToContact,UIActivityTypeMail,UIActivityTypeMessage,UIActivityTypePostToFlickr]
        self.presentViewController(activityViewController, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

