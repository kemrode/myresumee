//
//  RetexType.swift
//  myresumee
//
//  Created by kevin fichou on 26/02/2023.
//

import UIKit

enum RetexType: String, CaseIterable {
    case civilian
    case military
    case developper
    
    var data: (String) {
        switch self {
            case .civilian:
                return("Emplois civils")
            case .military:
                return("Expérience militaire")
            case .developper:
                return("Expérience comme développeur")
        }
    }
}
