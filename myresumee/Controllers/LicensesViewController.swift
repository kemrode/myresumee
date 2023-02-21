//
//  LicensesViewController.swift
//  myresumee
//
//  Created by kevin fichou on 09/02/2023.
//

import UIKit

class LicensesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
// MARK: - IBOutlets

    @IBOutlet weak var licenseCollectionView: LicensesCollectionView!
    @IBOutlet weak var headerView: CollectionViewTitle!

    
// MARK: - Properties
    private var _data = LicenseData().allLicenses
    private var _typeOfLicense: [LicenseType]!

// MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupCollectionview()
        self.headerView.titleLabel = "Diplômes et certificats"
        self.headerView.titleImage = UIImage(named: "licence")
        self._typeOfLicense = LicenseType.allCases
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setupBackground()
        self.headerView.setupCollectionViewTitle()
    }
    
// MARK: - Methods
    
    private func setupCollectionview() {
        self.licenseCollectionView.delegate = self
        self.licenseCollectionView.dataSource = self
        self.licenseCollectionView.showsVerticalScrollIndicator = false
        self.licenseCollectionView.backgroundColor = .kfDarBrownTwentyFive
        self.setupFlowLayout()
        self.licenseCollectionView.register(LicenseCategoryReusableView.self, forSupplementaryViewOfKind: "header", withReuseIdentifier: "licenseCategory")
    }

    private func setupFlowLayout() {
        var layoutListCOnfiguration = UICollectionLayoutListConfiguration(appearance: .insetGrouped)
//        layoutListCOnfiguration.backgroundColor = .clear
        layoutListCOnfiguration.headerMode = .supplementary
        layoutListCOnfiguration.headerTopPadding = 15
        self.licenseCollectionView.collectionViewLayout = UICollectionViewCompositionalLayout.list(using: layoutListCOnfiguration)
    }
    
    private func setupBackground() {
        let backView = UIView(frame: self.view.frame)
        backView.backgroundColor = .kfDarBrownTwentyFive
        self.view.addSubview(backView)
        self.view.sendSubviewToBack(backView)
        self.view.backgroundColor = .white
    }
    
// MARK: - CollectionView Methods
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return self._typeOfLicense.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self._data[section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "licenseCategory", for: indexPath) as? LicenseCategoryReusableView else {
            let emptyHeaderView = LicenseCategoryReusableView()
            emptyHeaderView.backgroundColor = .red
            return emptyHeaderView
        }
        headerView.backgroundColor = .kfDarBrownTwentyFive
        headerView.sectionName = self._typeOfLicense[indexPath.section].data
        headerView.setSectionNameLabel()
        return headerView
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "licenseCell", for: indexPath) as! LicenseCell
        let data = self._data[indexPath.section]
        let license = data[indexPath.item]
        cell.licenseImageView.image = license.image
        cell.licenseTitle.text = license.title
        return cell
    }
}
