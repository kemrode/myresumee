//
//  RetexCell.swift
//  myresumee
//
//  Created by kevin fichou on 25/02/2023.
//

import UIKit

class RetexCell: UICollectionViewCell {
    
// MARK: - IBOutlets
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
// MARK: - Properties
    
// MARK: - Constructor
    override func updateConfiguration(using state: UICellConfigurationState) {
        var backgroundConfiguration = UIBackgroundConfiguration.listPlainCell().updated(for: state)
        let cellView = UIView()
        cellView.backgroundColor = .kfLightBlueTwentyFive
        let shadowView = UIView()
        shadowView.layer.masksToBounds = false
        shadowView.layer.shadowColor = UIColor.black.cgColor
        shadowView.layer.shadowOffset = CGSize(width: 0.5, height: 3)
        shadowView.layer.shadowRadius = 4
        shadowView.layer.shadowOpacity = 0.2
        cellView.addSubview(shadowView)
        backgroundConfiguration.customView = cellView
        self.setTitleLabel()
        self.setRetexImage()
        self.backgroundConfiguration = backgroundConfiguration
    }
    
// MARK: - Methods
    
    private func setRetexImage() {
        self.image.contentMode = .scaleAspectFit
    }
    
    private func setTitleLabel() {
        self.titleLabel.numberOfLines = 0
        self.titleLabel.lineBreakMode = .byWordWrapping
        self.titleLabel.textAlignment = .center
        self.titleLabel.font = .systemFont(ofSize: 14, weight: .bold)
        self.titleLabel.textColor = .kfMidBlue
    }
    
}
