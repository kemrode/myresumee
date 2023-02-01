//
//  HeaderView.swift
//  myresumee
//
//  Created by kevin fichou on 01/02/2023.
//

import UIKit

class HeaderView: UIView {

// MARK: - IBOutlets
    
    @IBOutlet weak var titleHeader: UILabel!
    @IBOutlet weak var subtitleHeader: UILabel!
    @IBOutlet weak var headerPictureView: HeaderPictureView!
    

// MARK: - Properties
    
    private let _radius: CGFloat = 13
    private let _titleFontSize: CGFloat = 24
    private let _subtitleFontSize: CGFloat = 9
    private let _titleMessage = "Kevin FICHOU"
    private let _subtitleMessage = "Développeur informatique en alternance à CESI Rouen"
    
    override func draw(_ rect: CGRect) {
        print("headerView draw")
    }
    
    public func setHeaderViewElements() {
        self.setGeneralView()
        self.setTitle()
        self.setSubtitle()
    }
    
    private func setGeneralView() {
        self.backgroundColor = .kfMidBlue
        self.clipsToBounds = true
        self.layer.cornerRadius = self._radius
        self.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
    }
    
    private func setTitle() {
        self.titleHeader.text = self._titleMessage
        self.titleHeader.font = UIFont.systemFont(ofSize: self._titleFontSize, weight: .bold)
        self.titleHeader.textAlignment = .center
    }
    
    private func setSubtitle() {
        self.subtitleHeader.text = self._subtitleMessage
        self.subtitleHeader.font = UIFont.systemFont(ofSize: self._subtitleFontSize, weight: .regular)
    }

}
