//
//  RandomAbilitiesView.swift
//  myresumee
//
//  Created by kevin fichou on 02/02/2023.
//

import UIKit

class RandomAbilitiesView: UIView {
    
// MARK: - IBOutlets

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var abilities: UILabel!
    
// MARK: - Methods

    override func draw(_ rect: CGRect) {}
    
    public func setUpLabels() {
        self.setupTitleLabel()
        self.setupAbilitiesLabel()
        self.drawShadow()
        self.drawCornerRadius()
    }
    
    private func setupTitleLabel() {
        self.title.text = "Quelques points forts"
        self.title.font = .systemFont(ofSize: 13, weight: .bold)
        self.title.textColor = .darkText
        self.title.textAlignment = .center
    }
    
    private func setupAbilitiesLabel() {
        self.abilities.text = "Créatif - Volontaire - Pugnace"
        self.abilities.textColor = .kfDarkBlue
        self.abilities.font = .systemFont(ofSize: 20, weight: .bold)
        self.abilities.textAlignment = .center
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
}
