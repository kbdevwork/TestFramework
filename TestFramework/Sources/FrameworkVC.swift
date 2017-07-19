//
//  ViewController.swift
//  TestFramework
//
//  Created by Kevin on 19/07/2017.
//  Copyright © 2017 Channelforge. All rights reserved.
//

import UIKit

public class FrameworkVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    override public func viewDidLoad() {
        super.viewDidLoad()
        let podBundle = NSBundle(forClass: FrameworkVC.self)
        
        let bundleURL = podBundle.URLForResource("TestFramework", withExtension: "bundle")
        let bundle = NSBundle(URL: bundleURL!)!
        let cellNib = UINib(nibName: "OurCell", bundle: bundle)
        tableView.registerNib(cellNib, forCellReuseIdentifier: "OurCell")
        tableView.estimatedRowHeight = 80
        tableView.rowHeight = UITableViewAutomaticDimension
    }
}

extension FrameworkVC: UITableViewDelegate {}

extension FrameworkVC: UITableViewDataSource {
    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCellWithIdentifier("OurCell")!
    }
    
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
}
