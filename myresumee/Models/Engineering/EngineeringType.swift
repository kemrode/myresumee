//
//  EngineeringType.swift
//  myresumee
//
//  Created by kevin fichou on 25/02/2023.
//

import Foundation
import UIKit

enum EngineeringType: String, CaseIterable {
    
    case hardSkill
    case softSkill
    case programmatic
    
    var data: (String) {
        switch self {
            case .hardSkill:
                return("Savoir-faire")
            case .softSkill:
                return("Savoir-être")
            case .programmatic:
                return("Langages de programmation")
        }
    }
}
