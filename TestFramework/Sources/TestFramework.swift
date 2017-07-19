//
//  TestFramework.swift
//  TestFramework
//
//  Created by Kevin on 19/07/2017.
//  Copyright © 2017 Channelforge. All rights reserved.
//

import UIKit

public class TestFramework {
    
    public static func performSegueToFrameworkVC(caller: UIViewController) {
       
        let podBundle = Bundle(for: TestFramework.self)
        
        let bundleURL = podBundle.url(forResource: "TestFramework", withExtension: "bundle")
        let bundle = Bundle(url: bundleURL!)!
        let storyboard = UIStoryboard(name: "FrameworkStoryboard", bundle: bundle)
        let vc = storyboard.instantiateInitialViewController()!
        caller.present(vc, animated: true, completion: nil)
    }
}
