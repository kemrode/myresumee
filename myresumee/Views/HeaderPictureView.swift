//
//  HeaderPictureView.swift
//  myresumee
//
//  Created by kevin fichou on 01/02/2023.
//

import UIKit

class HeaderPictureView: UIView {
    

// MARK: - Properties


    override func draw(_ rect: CGRect) {}
    
    public func addProfilPicture() {
        let imageView = UIImageView(frame: self.bounds)
        imageView.image = UIImage(named: "profil")
        imageView.contentMode = .scaleToFill
        self.addSubview(imageView)
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.width/2
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 3
    }

}
