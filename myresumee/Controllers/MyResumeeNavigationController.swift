//
//  MyResumeeNavigationController.swift
//  myresumee
//
//  Created by kevin fichou on 02/02/2023.
//

import UIKit

class MyResumeeNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var myResummeNavgiationBar = MyResumeeNavigationBar()
        myResummeNavgiationBar.setupNavigationBar()
        self.navigationBar.standardAppearance = MyResumeeNavigationBar().appearance
    }
    

}
