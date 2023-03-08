//
//  RetexSelectedViewController.swift
//  myresumee
//
//  Created by kevin fichou on 08/03/2023.
//

import UIKit

class RetexSelectedViewController: UIViewController {
    
// MARK: - IBOulets
    @IBOutlet weak var retexImageView: UIImageView!
    @IBOutlet weak var retexTitleLabel: UILabel!
    @IBOutlet weak var retexTypeLabel: UILabel!
    @IBOutlet weak var retexExplanations: UITextView!
    
// MARK: - Properties
    public var retex: Retex!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.retexImageView.image = retex.image
        self.retexTitleLabel.text = retex.title
        self.retexTypeLabel.text = retex.typeOfRetex
        self.retexExplanations.text = retex.retexExplanation
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setTitlLabel()
        self.setTypeLabel()
        self.setExplanations()
    }
    
// MARK: - Private Methods
    
    private func setTitlLabel() {
        self.retexTitleLabel.numberOfLines = 0
        self.retexTitleLabel.lineBreakMode = .byWordWrapping
        self.retexTitleLabel.font = .systemFont(ofSize: 18, weight: .bold)
        self.retexTitleLabel.textColor = .kfMidBlue
    }
    
    private func setTypeLabel() {
        self.retexTypeLabel.numberOfLines = 0
        self.retexTypeLabel.lineBreakMode = .byWordWrapping
        self.retexTypeLabel.font = .systemFont(ofSize: 12, weight: .bold)
        self.retexTypeLabel.textColor = .kfMidBlue
    }
    
    private func setExplanations() {
        self.retexExplanations.textColor = .kfMidBlue
        self.retexExplanations.font = .systemFont(ofSize: 14, weight: .semibold)
    }
    
    private func setImageView() {
        self.retexImageView.contentMode = .scaleAspectFit
    }
}
