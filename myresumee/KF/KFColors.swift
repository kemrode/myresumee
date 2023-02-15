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
    static let kfDarkBlue: UIColor = #colorLiteral(red: 0.06666666667, green: 0.168627451, blue: 0.568627451, alpha: 1)
    static let kfMidBlue: UIColor = #colorLiteral(red: 0.1921568627, green: 0.3333333333, blue: 0.8745098039, alpha: 1)
    static let kfLightBlue: UIColor = #colorLiteral(red: 0.3215686275, green: 0.4549019608, blue: 1, alpha: 1)
    static let kfLightBlueTwentyFive: UIColor = UIColor(
        red: CIColor(color: .kfLightBlue).red,
        green: CIColor(color: .kfLightBlue).green,
        blue: CIColor(color: .kfLightBlue).blue,
        alpha: 0.25)
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
