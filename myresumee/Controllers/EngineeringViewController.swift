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
    private var _programmaticData = EngineeringData().allProgrammaticSkills
    private var _softSkillsData = EngineeringData().allSoftSkills
    private var _hardSkillsData = EngineeringData().allHardSkills
    private var _typeOfEngineering: [EngineeringType]!
    
// MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupCollectionView()
        self.headerView.titleLabel = "Mais que sais-je faire ?"
        self.headerView.titleImage = UIImage(named: "engineering")
        self._typeOfEngineering = EngineeringType.allCases
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setupBackground()
        self.headerView.setupCollectionViewTitle()
        self.engineeringCV.reloadData()
    }

// MARK: - Methods
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
        self.engineeringCV.backgroundColor = .clear
        self.setupFlowLayout()
    }
    
    private func setupFlowLayout() {
        var layoutListConfiguration = UICollectionLayoutListConfiguration(appearance: .insetGrouped)
        layoutListConfiguration.backgroundColor = .clear
        layoutListConfiguration.headerMode = .supplementary
        layoutListConfiguration.headerTopPadding = 15
        self.engineeringCV.collectionViewLayout = UICollectionViewCompositionalLayout.list(using: layoutListConfiguration)
    }

// MARK: - CollectionView Methods
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return self._typeOfEngineering.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
            case 0:
                return self._hardSkillsData.count
            case 1:
                return self._softSkillsData.count
            case 2:
                return self._programmaticData.count
            default:
                return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "engineeringReusableView", for: indexPath) as? EngineeringReusableView else {
            let emptyHeader = EngineeringReusableView()
            emptyHeader.backgroundColor = .red
            return emptyHeader
        }
        headerView.backgroundColor = .clear
        headerView.sectionName = self._typeOfEngineering[indexPath.section].data
        headerView.setSectionNameLabel()
        return headerView
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "engineeringCell", for: indexPath) as! EngineeringCell
        switch self._typeOfEngineering[indexPath.section].data {
            case EngineeringType.hardSkill.data:
                let data = self._hardSkillsData[indexPath.item]
                self.configurationCellWithData(cell: cell, data: data)
            case EngineeringType.softSkill.data:
                let data = self._softSkillsData[indexPath.item]
                self.configurationCellWithData(cell: cell, data: data)
            case EngineeringType.programmatic.data:
                let data = self._programmaticData[indexPath.item]
                self.configurationCellWithData(cell: cell, data: data)
            default:
                let data = self._hardSkillsData[indexPath.item]
                self.configurationCellWithData(cell: cell, data: data)
        }
        return cell
    }
    
    private func configurationCellWithData(cell: EngineeringCell, data: Engineering){
        cell.image.image = data.image
        cell.title.text = data.title
        cell.layer.masksToBounds = false
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOffset = CGSize(width: 2, height: 4)
        cell.layer.shadowOpacity = 0.2
        cell.layer.shadowRadius = 5
    }
    
}
