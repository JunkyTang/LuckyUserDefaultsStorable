//
//  ViewController.swift
//  LuckyUserDefaultsStorable
//
//  Created by 汤俊杰 on 05/28/2024.
//  Copyright (c) 2024 汤俊杰. All rights reserved.
//

import UIKit
import LuckyUserDefaultsStorable

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(Config.defoult)
        Config.defoult.host = "http://www.xyz.com"
        print(Config.defoult)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


struct Config: Codable {
    
    var host: String
        
    @UserDefaultsStorable(key: "Config.defoult", defaultValue: Config(host: "https://www.google.com"))
    static var defoult: Config
    
}
