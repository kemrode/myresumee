//
//  CurrentJobView.swift
//  myresumee
//
//  Created by kevin fichou on 02/02/2023.
//

import UIKit

class CurrentJobView: UIView {

// IBOutlets

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    override func draw(_ rect: CGRect) {
    }
    
    public func setupCurrentview() {
        self.setTitleLabel()
        self.setJobLabel()
        self.drawShadow()
        self.drawCornerRadius()
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
        view.backgroundColor = .white
        view.clipsToBounds = true
        view.layer.cornerRadius = 13
        self.addSubview(view)
        self.sendSubviewToBack(view)
    }
    
    private func setTitleLabel() {
        self.title.text = "Poste actuel"
        self.title.font = .systemFont(ofSize: 16, weight: .bold)
        self.title.textColor = .darkText
        self.title.textAlignment = .left
    }
    
    private func setJobLabel() {
        self.jobLabel.text = "Développeur iOS"
        self.jobLabel.textColor = .kfMidBlue
        self.jobLabel.textAlignment = .center
        self.jobLabel.font = .systemFont(ofSize: 16, weight: .bold)
    }

}
