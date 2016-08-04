//
//  ViewController.swift
//  Configurations
//
//  Created by Bart Jacobs on 04/08/16.
//  Copyright © 2016 Cocoacasts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Initialize Configuration
        var configuration = Configuration()

        print(configuration.environment.baseURL)
        print(configuration.environment.token)
    }

}
