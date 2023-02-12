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
        let backgroundView = UIBackgroundConfiguration.listPlainCell().updated(for: state)
        let cellView = UIView()
        cellView.backgroundColor = .red
        backgroundConfiguration?.customView = cellView
        self.backgroundConfiguration = backgroundConfiguration
        
    }
}
