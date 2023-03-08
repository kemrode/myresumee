//
//  RetexCollectionView.swift
//  myresumee
//
//  Created by kevin fichou on 25/02/2023.
//

import UIKit

class RetexCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource {
    
// MARK: - Properties
    private var _dataMilitaryRetex = RetexData().allMilitaryRetex
    private var _dataDevelopperRetex = RetexData().allDevelopperRetex
    private var _dataCiviliantRetex = RetexData().allCivilianRetex
    public var parent: RetexViewController!
    public var retexSelected: Retex!
    
// MARK: - Setup CollectionView
    public func setCollectionView() {
        self.delegate = self
        self.dataSource = self
        self.showsVerticalScrollIndicator = false
        self.backgroundColor = .clear
        self.register(RetexReusableView.self, forSupplementaryViewOfKind: "header", withReuseIdentifier: "retexReusableView")
        self.setupFlowLayout()
    }
    
    private func setupFlowLayout() {
        var layoutListConfiguration = UICollectionLayoutListConfiguration(appearance: .insetGrouped)
        layoutListConfiguration.backgroundColor = .clear
        layoutListConfiguration.headerMode = .supplementary
        layoutListConfiguration.headerTopPadding = 15
        self.collectionViewLayout = UICollectionViewCompositionalLayout.list(using: layoutListConfiguration)
    }
    
// MARK: - CollectionView Methods
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return RetexType.allCases.count
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "retexReusableView", for: indexPath) as? RetexReusableView else {
            let emptyHeaderView = RetexReusableView()
            emptyHeaderView.backgroundColor = .red
            return emptyHeaderView
        }
        headerView.backgroundColor = .clear
        headerView.sectionName = RetexType.allCases[indexPath.section].data
        headerView.setSectionNameLabel()
        return headerView
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
            case 0:
                return self._dataCiviliantRetex.count
            case 1:
                return self._dataMilitaryRetex.count
            case 2:
                return self._dataDevelopperRetex.count
            default:
                return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch RetexType.allCases[indexPath.section].data {
            case RetexType.civilian.data:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "retexCell", for: indexPath) as! RetexCell
                let data = self._dataCiviliantRetex[indexPath.item]
                cell.titleLabel.text = data.title
                cell.image.image = data.image
                return cell
            case RetexType.military.data:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "retexCell", for: indexPath) as! RetexCell
                let data = self._dataMilitaryRetex[indexPath.item]
                cell.titleLabel.text = data.title
                cell.image.image = data.image
                return cell
            case RetexType.developper.data:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "retexCell", for: indexPath) as! RetexCell
                let data = self._dataDevelopperRetex[indexPath.item]
                cell.titleLabel.text = data.title
                cell.image.image = data.image
                return cell
            default:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "retexCell", for: indexPath) as! RetexCell
                cell.backgroundColor = .green
                return cell
                
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch RetexType.allCases[indexPath.section].data {
            case RetexType.civilian.data:
                let retex = self._dataCiviliantRetex[indexPath.item]
                self.retexSelected = retex
                self.parent.performSegue(withIdentifier: "goToRetexSelectedSegue", sender: parent)
            case RetexType.military.data:
                let retex = self._dataMilitaryRetex[indexPath.item]
                self.retexSelected = retex
                self.parent.performSegue(withIdentifier: "goToRetexSelectedSegue", sender: parent)
            case RetexType.developper.data:
                let retex = self._dataDevelopperRetex[indexPath.item]
                self.retexSelected = retex
                self.parent.performSegue(withIdentifier: "goToRetexSelectedSegue", sender: parent)
            default:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "retexCell", for: indexPath) as! RetexCell
                cell.backgroundColor = .red
        }
    }
    
}
