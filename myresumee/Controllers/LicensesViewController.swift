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
    private var _dataMilitaryLicenses = LicenseData().allMilitaryLicenses
    private var _dataCivilianLicenses = LicenseData().allCiviliansLicenses
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
        self.licenseCollectionView.reloadData()
    }
    
// MARK: - Methods
    private func setupCollectionview() {
        self.licenseCollectionView.delegate = self
        self.licenseCollectionView.dataSource = self
        self.licenseCollectionView.showsVerticalScrollIndicator = false
        self.licenseCollectionView.backgroundColor = .clear
        self.licenseCollectionView.register(LicenseCategoryReusableView.self, forSupplementaryViewOfKind: "header", withReuseIdentifier: "licenseCategory")
        self.setupFlowLayout()
    }

    private func setupFlowLayout() {
        var layoutListCOnfiguration = UICollectionLayoutListConfiguration(appearance: .insetGrouped)
        layoutListCOnfiguration.backgroundColor = .clear
        layoutListCOnfiguration.headerMode = .supplementary
        layoutListCOnfiguration.headerTopPadding = 15
        self.licenseCollectionView.collectionViewLayout = UICollectionViewCompositionalLayout.list(using: layoutListCOnfiguration)
    }
    
    private func setupBackground() {
        let backview = UIView(frame: self.view.frame)
        backview.backgroundColor = .kfDarBrownTwentyFive
        self.view.addSubview(backview)
        self.view.sendSubviewToBack(backview)
        self.view.backgroundColor = .white
    }
    
// MARK: - CollectionView Methods
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return self._typeOfLicense.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
            case 0:
                return self._dataCivilianLicenses.count
            case 1:
                return self._dataMilitaryLicenses.count
            default:
                return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "licenseCategory", for: indexPath) as? LicenseCategoryReusableView else {
            let emptyHeaderView = LicenseCategoryReusableView()
            emptyHeaderView.backgroundColor = .red
            return emptyHeaderView
        }
        headerView.backgroundColor = .clear
        headerView.sectionName = self._typeOfLicense[indexPath.section].data
        headerView.setSectionNameLabel()
        return headerView
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "licenseCell", for: indexPath) as! LicenseCell
        switch self._typeOfLicense[indexPath.section].data {
            case LicenseType.civilian.data:
                let data = self._dataCivilianLicenses[indexPath.item]
                self.configurationCellWithData(cell: cell, data: data)
                return cell
            case LicenseType.military.data:
                let data = self._dataMilitaryLicenses[indexPath.item]
                self.configurationCellWithData(cell: cell, data: data)
                return cell
            default:
                let data = self._dataCivilianLicenses[indexPath.item]
                self.configurationCellWithData(cell: cell, data: data)
                return cell
        }
    }
    
    private func configurationCellWithData(cell: LicenseCell, data: License) {
        cell.licenseImageView.image = data.image
        cell.licenseTitle.text = data.title
        cell.yearOfLicenceLb.text = data.year
    }
}
