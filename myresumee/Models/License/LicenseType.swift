//
//  LicenseType.swift
//  myresumee
//
//  Created by kevin fichou on 21/02/2023.
//

import Foundation
import UIKit

enum LicenseType: String, CaseIterable {
    
    case civilian
    case military
    
    var data: (String) {
        switch self {
            case .civilian:
                return("Diplômes Civils")
            case .military:
                return("Diplômes Militaires")
        }
    }
}
