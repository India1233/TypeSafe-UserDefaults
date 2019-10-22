//
//  ViewController.swift
//  TypeSafe-UserDefaults
//
//  Created by shiga on 22/10/19.
//  Copyright © 2019 Shigas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        UserDefaults.standard.userID = "123"
        if let userID = UserDefaults.standard.userID {
            print(userID)
        }
    }
}

// 1. avoid wrong key value
// 2. avoid wrong type cast
// 3. avoid keys over lapping

extension UserDefaults {
    var userID: String? {
        get{
            return string(forKey: #function)
        }
        set{
            set(newValue, forKey: #function)
        }
    }
    
}
