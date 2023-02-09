//
//  KFColors.swift
//  myresumee
//
//  Created by kevin fichou on 01/02/2023.
//

import Foundation
import UIKit

extension UIColor {
    
// Blues
    static let kfDarkBlue: UIColor = #colorLiteral(red: 0.08024726063, green: 0.2488821149, blue: 0.6366958022, alpha: 1)
    static let kfMidBlue: UIColor = #colorLiteral(red: 0.2478025854, green: 0.4338197708, blue: 0.9001842737, alpha: 1)
    static let kfLightBlue: UIColor = #colorLiteral(red: 0.3928229809, green: 0.5514177084, blue: 1, alpha: 1)
    
// Yellow
    static let kfYellow: UIColor = #colorLiteral(red: 0.8988825679, green: 0.7406945825, blue: 0.2462871075, alpha: 1)
    
// Brown
    static let kfDarkBrown: UIColor = #colorLiteral(red: 0.6385211945, green: 0.4981747866, blue: 0, alpha: 1)
    static let kfDarBrownTwentyFive: UIColor = UIColor(
        red: CIColor(color: .kfDarkBrown).red,
        green: CIColor(color: .kfDarkBrown).green,
        blue: CIColor(color: .kfDarkBrown).blue,
        alpha: 0.15)
}
