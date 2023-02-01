//
//  MainHomeViewController.swift
//  myresumee
//
//  Created by kevin fichou on 01/02/2023.
//

import UIKit

class MainHomeViewController: UIViewController {
    
// MARK: - IBOutlets
    
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var abilitiesRandomView: UIView!
    @IBOutlet weak var currentJobView: UIView!
    @IBOutlet weak var engineeringSelectionView: SelectedView!
    @IBOutlet weak var licenceSelectionView: SelectedView!
    @IBOutlet weak var retexSelectionView: SelectedView!
    @IBOutlet weak var hobbiesSelectionView: SelectedView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
        self.headerView.setHeaderViewElements()
    }
}
