//
//  MainViewController.swift
//  UIKitApp
//
//  Created by victor manzanero on 03/11/22.
//

import UIKit

class MainViewController: UIViewController {

    var welcomeBan:Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if !welcomeBan {
            self.welcome()
        }
    }
    
    func welcome() {
        let vc = UIStoryboard(name: "MainDashView", bundle: .main).instantiateViewController(withIdentifier: "b") as? WelcomeTwoViewController
        self.present(vc!, animated: true) {
            self.welcomeBan = true
        }
    }
}
