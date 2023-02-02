//
//  SelectedView.swift
//  myresumee
//
//  Created by kevin fichou on 01/02/2023.
//

import UIKit

class SelectedView: UIView {

// MARK: - IBOutlets

    @IBOutlet weak var selectionImageview: UIImageView!
    @IBOutlet weak var selectionTilte: UILabel!
    
    
// MARK: - Properties
    
    private let _cornerRadius: CGFloat = 13
    
    override func draw(_ rect: CGRect) {
    }
    
    public func setSelectedView() {
        self.setTitle()
        self.drawShadow()
        self.drawCornerRadius()
    }
    
    private func setSelectionImage() {
        
    }
    
    private func setTitle() {
        self.selectionTilte.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        self.selectionTilte.textColor = .kfMidBlue
        self.selectionTilte.textAlignment = .center
    }
    
    private func drawShadow() {
        self.backgroundColor = .clear
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0.5, height: 3)
        self.layer.shadowOpacity = 0.2
        self.layer.shadowRadius = 1
    }
    
    private func drawCornerRadius() {
        let rect = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
        let view = UIView(frame: rect)
        view.backgroundColor = UIColor(
            red: CIColor(color: .kfYellow).red,
            green: CIColor(color: .kfYellow).green,
            blue: CIColor(color: .kfYellow).blue,
            alpha: 0.5)
        view.clipsToBounds = true
        view.layer.cornerRadius = 13
        self.addSubview(view)
        self.sendSubviewToBack(view)
    }
    
    

}
