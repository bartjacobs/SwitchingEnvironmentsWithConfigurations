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
        if let configuration = Bundle.main.object(forInfoDictionaryKey: "Configuration") as? String {
            if configuration.range(of: "Staging") != nil {
                return .staging
            }
        }

        return .production
    }()
}

enum Environment: String {
    case staging
    case production

    var baseURL: String {
        switch self {
        case .staging: return "https://staging-api.myservice.com"
        case .production: return "https://api.myservice.com"
        }
    }

    var token: String {
        switch self {
        case .staging: return "lktopir156dsq16sbi8"
        case .production: return "5zdsegr16ipsbi1lktp"
        }
    }
}
