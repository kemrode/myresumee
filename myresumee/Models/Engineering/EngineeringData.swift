//
//  EngineeringData.swift
//  myresumee
//
//  Created by kevin fichou on 15/02/2023.
//

import Foundation
import UIKit

class EngineeringData {
    
// MARK: - Programmatic Skills
    var unity = Engineering(image: UIImage(named: "unity")!, title: "Unity 3D", engineeringType: .programmatic)
    var blender = Engineering(image: UIImage(named: "blender")!, title: "Blender", engineeringType: .programmatic)
    var csharp = Engineering(image: UIImage(named: "csharp")!, title: "C#", engineeringType: .programmatic)
    var swift = Engineering(image: UIImage(named: "swift")!, title: "Swift", engineeringType: .programmatic)
    var reactnative = Engineering(image: UIImage(named: "reactnative")!, title: "React Native", engineeringType: .programmatic)
    var html = Engineering(image: UIImage(named: "html")!, title: "HTML", engineeringType: .programmatic)
    var css = Engineering(image: UIImage(named: "css")!, title: "CSS", engineeringType: .programmatic)
    var sass = Engineering(image: UIImage(named: "sass")!, title: "SASS", engineeringType: .programmatic)
    var flutter = Engineering(image: UIImage(named: "flutter")!, title: "Flutter", engineeringType: .programmatic)
    var javascript = Engineering(image: UIImage(named: "javascript")!, title: "Javascript", engineeringType: .programmatic)
    var typescript = Engineering(image: UIImage(named: "typescript")!, title: "TypeScript", engineeringType: .programmatic)
    var database = Engineering(image: UIImage(named: "sql")!, title: "SQL", engineeringType: .programmatic)
    
    var allProgrammaticSkills: [Engineering] {
        return [unity, blender, csharp, swift, reactnative, html, css, sass, flutter, javascript, typescript, database]
    }

// MARK: - HardSkills
    
    var allHardSkills: [Engineering] {
        return []
    }
    
// MARK: - SoftSkills
    
    var allSoftSkills: [Engineering] {
        return []
    }
}
