//
//  CollectionViewTitle.swift
//  myresumee
//
//  Created by kevin fichou on 15/02/2023.
//

import Foundation
import UIKit

class CollectionViewTitle: UIView {
    
// MARK: - IBOutlets
    
    @IBOutlet weak var titleCVImageview: UIImageView!
    @IBOutlet weak var titleCVLabel: UILabel!
    
// MARK: - Properties
    
    public var titleImage: UIImage!
    public var titleLabel: String!

// MARK: - Methods
    
    override func draw(_ rect: CGRect) {}
    
    public func setupCollectionViewTitle() {
        self.backgroundColor = .kfYellow
        self.setupImageView()
        self.setupTitleLabel()
    }
    
    private func setupImageView() {
        self.titleCVImageview.image = self.titleImage
        guard self.titleImage != nil else {
            self.titleCVImageview.image = UIImage(named: "unity")
            return
        }
        self.titleCVImageview.contentMode = .center
    }
    
    private func setupTitleLabel() {
        self.titleCVLabel.textColor = .kfMidBlue
        self.titleCVLabel.textAlignment = .left
        self.titleCVLabel.font = .systemFont(ofSize: 14, weight: .bold)
        guard !self.titleLabel.isEmpty else {
            self.titleCVLabel.text = "Aucun titre ?"
            return
        }
    }
    
}
