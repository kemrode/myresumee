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
    @IBOutlet weak var abilitiesRandomView: RandomAbilitiesView!
    @IBOutlet weak var currentJobView: CurrentJobView!
    @IBOutlet weak var engineeringSelectionView: SelectedView!
    @IBOutlet weak var licenceSelectionView: SelectedView!
    @IBOutlet weak var retexSelectionView: SelectedView!
    @IBOutlet weak var hobbiesSelectionView: SelectedView!
    
// MARK: - Properties
    private var engineeringTapGesture: UITapGestureRecognizer!
    private var licenseTapGesture: UITapGestureRecognizer!
    private var retexTapGesture: UITapGestureRecognizer!
    private var hobbiesTapGesture: UITapGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupInformationsToSelectionViews()
        self.setupViews()
        self.addTapGestures()
        self.setTabbarAppearance()
        self.setNavigationBarAppearance()
        self.headerView.layer.zPosition = 10
        self.abilitiesRandomView.setUpLabels()
        self.currentJobView.setupCurrentview()
        self.headerView.setHeaderViewElements()
        self.engineeringSelectionView.setSelectedView()
        self.licenceSelectionView.setSelectedView()
        self.retexSelectionView.setSelectedView()
        self.hobbiesSelectionView.setSelectedView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.headerView.headerPictureView.isHidden = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.headerView.headerPictureView.isHidden = true
    }
    
    private func setTabbarAppearance() {
        let appearance = UITabBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.backgroundColor = .kfMidBlue
        self.tabBarController?.tabBar.standardAppearance = appearance
        self.tabBarController?.tabBar.scrollEdgeAppearance = appearance
    }
    
    private func setNavigationBarAppearance() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.backgroundColor = .kfMidBlue
        let titleAttribute = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24, weight: .bold),
                                NSAttributedString.Key.foregroundColor: UIColor.white]
        appearance.titleTextAttributes = titleAttribute as [NSAttributedString.Key : Any]
        self.navigationController?.navigationBar.standardAppearance = appearance
        self.navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    private func addTapGestures() {
        self.setupEngineeringTapGesture()
        self.setupLicenseTapGesture()
        self.setupRetexTapGesture()
        self.setupHobbiesTapGesture()
    }
    
    private func setupEngineeringTapGesture() {
        self.engineeringTapGesture = UITapGestureRecognizer(target: self, action: #selector(goToEngineeringView(_ :)))
        self.engineeringSelectionView.addGestureRecognizer(self.engineeringTapGesture)
    }
    
    private func setupLicenseTapGesture(){
        self.licenseTapGesture = UITapGestureRecognizer(target: self, action: #selector(goToLicensesView(_ :)))
        self.licenceSelectionView.addGestureRecognizer(self.licenseTapGesture)
    }
    
    private func setupRetexTapGesture() {
        self.retexTapGesture = UITapGestureRecognizer(target: self, action: #selector(goToRetexView(_ :)))
        self.retexSelectionView.addGestureRecognizer(self.retexTapGesture)
    }
    
    private func setupHobbiesTapGesture() {
        self.hobbiesTapGesture = UITapGestureRecognizer(target: self, action: #selector(goToHobbiesView(_ :)))
        self.hobbiesSelectionView.addGestureRecognizer(self.hobbiesTapGesture)
    }
    
    @objc private func goToEngineeringView(_ sender: UITapGestureRecognizer) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "engineeringViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func goToLicensesView(_ sender: UITapGestureRecognizer){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "engineeringViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func goToRetexView(_ sender: UITapGestureRecognizer){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "engineeringViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func goToHobbiesView(_ sender: UITapGestureRecognizer){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "engineeringViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
// MARK: - Methods
    
    private func setupViews() {
        let backView: UIView = {
            let view = UIView(frame: self.view.frame)
            view.backgroundColor = UIColor(
                red: CIColor(color: .kfDarkBrown).red,
                green: CIColor(color: .kfDarkBrown).green,
                blue: CIColor(color: .kfDarkBrown).blue,
                alpha: 0.15)
            return view
        }()
        self.view.addSubview(backView)
        self.view.sendSubviewToBack(backView)
    }
    
    private func setupInformationsToSelectionViews() {
        self.setInforamtionToEngineeringSelectionView()
        self.setInformationToLicenceSelectionView()
        self.setInformationToRetexSelectionView()
        self.setInformationToHobbiesSelectionView()
    }

    private func setInforamtionToEngineeringSelectionView() {
        self.engineeringSelectionView.selectionTilte.text = "Ce que je sais faire"
        self.engineeringSelectionView.selectionImageview.image = UIImage(named: "engineering")
    }
    
    private func setInformationToLicenceSelectionView() {
        self.licenceSelectionView.selectionTilte.text = "Mes diplômes"
        self.licenceSelectionView.selectionImageview.image = UIImage(named: "licence")
    }
    
    private func setInformationToRetexSelectionView() {
        self.retexSelectionView.selectionTilte.text = "RETEX pro"
        self.retexSelectionView.selectionImageview.image = UIImage(named: "uploadCloud")
    }
    
    private func setInformationToHobbiesSelectionView() {
        self.hobbiesSelectionView.selectionTilte.text = "Mes loisirs"
        self.hobbiesSelectionView.selectionImageview.image = UIImage(named: "controller")
    }
}
