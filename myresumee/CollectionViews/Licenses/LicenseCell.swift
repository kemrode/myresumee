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
    @IBOutlet weak var yearOfLicenceLb: UILabel!

    // MARK: - Properties

// MARK: - Methods
    
    override func updateConfiguration(using state: UICellConfigurationState) {
        var backgroundView = UIBackgroundConfiguration.listPlainCell().updated(for: state)
        let cellView = UIView()
        cellView.backgroundColor = .kfLightBlueTwentyFive
        self.setLicenseTitleLabel()
        self.setYearLicenseLabel()
        backgroundView.customView = cellView
        self.backgroundConfiguration = backgroundConfiguration
    }
    
    private func setLicenseTitleLabel() {
        self.licenseTitle.numberOfLines = 0
        self.licenseTitle.lineBreakMode = .byWordWrapping
        self.licenseTitle.textAlignment = .left
        self.licenseTitle.font = .systemFont(ofSize: 14, weight: .bold)
        self.licenseTitle.textColor = .kfMidBlue
    }
    
    private func setYearLicenseLabel() {
        self.yearOfLicenceLb.numberOfLines = 0
        self.yearOfLicenceLb.lineBreakMode = .byWordWrapping
        self.yearOfLicenceLb.textAlignment = .center
        self.yearOfLicenceLb.font = .systemFont(ofSize: 14, weight: .bold)
        self.yearOfLicenceLb.textColor = .kfMidBlue
    }
    
}
