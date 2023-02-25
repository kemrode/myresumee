//
//  EngineeringCell.swift
//  myresumee
//
//  Created by kevin fichou on 12/02/2023.
//

import Foundation
import UIKit

class EngineeringCell: UICollectionViewListCell {
    
// MARK: - IBOutlets
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var title: UILabel!
    
// MARK: - Properties
    
    
// MARK: - Methods
    
    override func updateConfiguration(using state: UICellConfigurationState) {
        var backgroundConfiguration = UIBackgroundConfiguration.listPlainCell().updated(for: state)
        let cellView = UIView()
        cellView.backgroundColor = .kfLightBlueTwentyFive
        backgroundConfiguration.customView = cellView
        self.backgroundConfiguration = backgroundConfiguration
        self.setImage()
        self.setTitle()
    }
    
    private func setImage() {
        self.image.contentMode = .scaleAspectFit
    }
    
    private func setTitle() {
        self.title.numberOfLines = 0
        self.title.lineBreakMode = .byWordWrapping
        self.title.textAlignment = .center
        self.title.font = .systemFont(ofSize: 14, weight: .bold)
        self.title.textColor = .kfMidBlue
    }
}
