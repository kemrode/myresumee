//
//  RetexViewController.swift
//  myresumee
//
//  Created by kevin fichou on 09/02/2023.
//

import UIKit

class RetexViewController: UIViewController {

// MARK: - IBOutlets
    @IBOutlet weak var retexCollectionView: RetexCollectionView!
    @IBOutlet weak var headerView: CollectionViewTitle!
    
// MARK: - Properties
    public var selectedRetex: Retex!
    
// MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.retexCollectionView.parent = self
        self.retexCollectionView.setCollectionView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.headerView.titleLabel = "Retour d'Expérience professionnel"
        self.headerView.titleImage = UIImage(named: "uploadCloud")
        self.setupBackground()
        self.headerView.setupCollectionViewTitle()
        self.retexCollectionView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToRetexSelectedSegue" {
            let vc = segue.destination as! RetexSelectedViewController
            vc.retex = self.retexCollectionView.retexSelected
        }
    }

// MARK: - Methods
    private func setupBackground() {
        let backview = UIView(frame: self.view.frame)
        backview.backgroundColor = .kfDarBrownTwentyFive
        self.view.addSubview(backview)
        self.view.sendSubviewToBack(backview)
        self.view.backgroundColor = .white
    }
}
