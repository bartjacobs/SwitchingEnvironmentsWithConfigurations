//
//  Configuration.swift
//  Configurations
//
//  Created by Bart Jacobs on 04/08/16.
//  Copyright © 2016 Cocoacasts. All rights reserved.
//

import UIKit

struct Configuration {
    lazy var environment: Environment = {
        if let configuration = NSBundle.mainBundle().objectForInfoDictionaryKey("Configuration") as? String {
            if configuration.rangeOfString("Staging") != nil {
                return Environment.Staging
            }
        }

        return Environment.Production
    }()
}

enum Environment: String {
    case Staging = "staging"
    case Production = "production"

    var baseURL: String {
        switch self {
        case .Staging: return "https://staging-api.myservice.com"
        case .Production: return "https://api.myservice.com"
        }
    }

    var token: String {
        switch self {
        case .Staging: return "lktopir156dsq16sbi8"
        case .Production: return "5zdsegr16ipsbi1lktp"
        }
    }
}
