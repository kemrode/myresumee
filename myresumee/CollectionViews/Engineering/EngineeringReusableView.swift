//
//  EngineeringReusableView.swift
//  myresumee
//
//  Created by kevin fichou on 25/02/2023.
//

import UIKit

class EngineeringReusableView: UICollectionReusableView {
        
// MARK: - IBOutlet
    @IBOutlet weak var sectionTitleLb: UILabel!
    
// MARK: - Property
    public var sectionName: String!

// MARK: - Constructor
    
    public func setSectionNameLabel() {
        self.sectionTitleLb.font = .systemFont(ofSize: 24, weight: .bold)
        self.sectionTitleLb.textColor = .kfDarkBlue
        self.sectionTitleLb.text = self.sectionName
        self.sectionTitleLb.numberOfLines = 0
        self.sectionTitleLb.lineBreakMode = .byWordWrapping
    }
}
