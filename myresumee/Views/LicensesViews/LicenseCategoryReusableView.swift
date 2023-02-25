//
//  LicenseCategoryReusableView.swift
//  myresumee
//
//  Created by kevin fichou on 21/02/2023.
//

import Foundation
import UIKit

class LicenseCategoryReusableView: UICollectionReusableView {
    
// MARK: - IBOutlet
    @IBOutlet weak var sectionTitleLb: UILabel!
    
// MARK: - Properties
    public var sectionName: String!
    
// MARK: - Constructor
    
    public func setSectionNameLabel() {
        self.sectionTitleLb.font = .systemFont(ofSize: 24, weight: .bold)
        self.sectionTitleLb.textColor = .kfDarkBlue
        self.sectionTitleLb.text = self.sectionName
    }
}
