//
//  EngineeringViewController.swift
//  myresumee
//
//  Created by kevin fichou on 09/02/2023.
//

import UIKit

class EngineeringViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var headerView: CollectionViewTitle!
    @IBOutlet weak var engineeringCV: EngineeringCollectionView!
    
// MARK: - Properties
    private var _data: [Engineering] = EngineeringData().allEngineering
    
// MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupCollectionView()
        self.headerView.titleLabel = "Mais que sais-je faire ?"
        self.headerView.titleImage = UIImage(named: "engineering")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setupBackground()
        self.headerView.setupCollectionViewTitle()
    }
    
    private func setupBackground() {
        let backView = UIView(frame: self.view.frame)
        backView.backgroundColor = .kfDarBrownTwentyFive
        self.view.addSubview(backView)
        self.view.sendSubviewToBack(backView)
        self.view.backgroundColor = .white
    }
    
    private func setupCollectionView() {
        self.engineeringCV.delegate = self
        self.engineeringCV.dataSource = self
        self.engineeringCV.showsVerticalScrollIndicator = false
        self.engineeringCV.backgroundColor = .kfDarBrownTwentyFive
        self.setupFlowLayout()
    }
    
    private func setupFlowLayout() {
        var layoutListConfiguration = UICollectionLayoutListConfiguration(appearance: .insetGrouped)
        layoutListConfiguration.backgroundColor = .white
        self.engineeringCV.collectionViewLayout = UICollectionViewCompositionalLayout.list(using: layoutListConfiguration)
    }

// MARK: - CollectionView Methods
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self._data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "engineeringCell", for: indexPath) as! EngineeringCell
        let data = self._data[indexPath.item]
        cell.image.image = data.image
        cell.title.text = data.title
        return cell
    }
    
}
