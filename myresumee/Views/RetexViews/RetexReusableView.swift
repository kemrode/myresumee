//
//  RetexReusableView.swift
//  myresumee
//
//  Created by kevin fichou on 25/02/2023.
//

import UIKit

class RetexReusableView: UICollectionReusableView {
    
// MARK: - IBOutlet
    @IBOutlet weak var sectionTitleLabel: UILabel!
    
// MARK: - Property

    public var sectionName: String!

// MARK: - Constructor
    
    public func setSectionNameLabel() {
        self.sectionTitleLabel.font = .systemFont(ofSize: 24, weight: .bold)
        self.sectionTitleLabel.textColor = .kfDarkBlue
        self.sectionTitleLabel.text = self.sectionName
    }
}
