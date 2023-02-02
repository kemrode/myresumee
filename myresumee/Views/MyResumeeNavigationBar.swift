//
//  MyResumeeNavigationBar.swift
//  myresumee
//
//  Created by kevin fichou on 02/02/2023.
//

import UIKit

class MyResumeeNavigationBar: UINavigationBar {

// MARK: - Properties
    
    public var appearance: UINavigationBarAppearance!

    override func draw(_ rect: CGRect) {
        self.setupNavigationBar()
    }
    
    public func setupNavigationBar() {
        self.appearance = UINavigationBarAppearance()
        self.appearance.configureWithOpaqueBackground()
        self.appearance.backgroundColor = .kfMidBlue
        let titleAttribute = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24, weight: .bold),
                              NSAttributedString.Key.foregroundColor: UIColor.white]
        self.appearance.titleTextAttributes = titleAttribute as [NSAttributedString.Key : Any]
    }
    

}
