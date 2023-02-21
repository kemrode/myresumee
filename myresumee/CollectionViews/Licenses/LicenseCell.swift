//
//  LicenseCell.swift
//  myresumee
//
//  Created by kevin fichou on 21/02/2023.
//

import UIKit

class LicenseCell: UICollectionViewCell {
    
// MARK: - IBOutlet
    @IBOutlet weak var licenseImageView: UIImageView!
    @IBOutlet weak var licenseTitle: UILabel!
    
// MARK: - Properties

// MARK: - Methods
    
    override func updateConfiguration(using state: UICellConfigurationState) {
        var backgroundView = UIBackgroundConfiguration.listPlainCell().updated(for: state)
        let cellView = UIView()
        cellView.backgroundColor = .kfLightBlueTwentyFive
        self.setLicenseTitleLabel()
        backgroundView.customView = cellView
        self.backgroundConfiguration = backgroundConfiguration
    }
    
    private func setLicenseTitleLabel() {
        self.licenseTitle.numberOfLines = 0
        self.licenseTitle.lineBreakMode = .byWordWrapping
        self.licenseTitle.textAlignment = .left
    }
    
}
