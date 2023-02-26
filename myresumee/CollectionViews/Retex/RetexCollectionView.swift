//
//  RetexCollectionView.swift
//  myresumee
//
//  Created by kevin fichou on 25/02/2023.
//

import UIKit

class RetexCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource {
    
// MARK: - Properties
//    private var _dataAllRetex:
    
    public func setCollectionView() {
        self.delegate = self
        self.dataSource = self
        self.showsVerticalScrollIndicator = false
        self.backgroundColor = .clear
        self.register(RetexReusableView.self, forSupplementaryViewOfKind: "header", withReuseIdentifier: "retexReusableView")
    }
    
// MARK: - CollectionView Methods
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "retexReusableView", for: indexPath) as? RetexReusableView else {
            let emptyHeaderView = RetexReusableView()
            emptyHeaderView.backgroundColor = .red
            return emptyHeaderView
        }
        headerView.backgroundColor = .clear
        headerView.sectionName = "test"
        headerView.setSectionNameLabel()
        return headerView
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "retexCell", for: indexPath) as! RetexCell
        return cell
    }
    
}
