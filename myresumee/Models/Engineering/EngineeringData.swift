//
//  EngineeringData.swift
//  myresumee
//
//  Created by kevin fichou on 15/02/2023.
//

import Foundation
import UIKit

class EngineeringData {
    
    var unity = Engineering(image: UIImage(named: "unity")!, title: "Unity 3D")
    var blender = Engineering(image: UIImage(named: "blender")!, title: "Blender")
    var csharp = Engineering(image: UIImage(named: "csharp")!, title: "C#")
    var swift = Engineering(image: UIImage(named: "swift")!, title: "Swift")
    var reactnative = Engineering(image: UIImage(named: "reactnative")!, title: "React Native")
    var html = Engineering(image: UIImage(named: "html")!, title: "HTML")
    var css = Engineering(image: UIImage(named: "css")!, title: "CSS")
    var sass = Engineering(image: UIImage(named: "sass")!, title: "SASS")
    var flutter = Engineering(image: UIImage(named: "flutter")!, title: "Flutter")
    var javascript = Engineering(image: UIImage(named: "javascript")!, title: "Javascript")
    var typescript = Engineering(image: UIImage(named: "typescript")!, title: "TypeScript")
    var database = Engineering(image: UIImage(named: "sql")!, title: "SQL")
    
    var allEngineering : [Engineering] {
        return [unity, blender, csharp, swift, reactnative, html, css, sass, flutter, javascript, typescript, database]
    }
}
