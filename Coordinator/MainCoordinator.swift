//
//  MainCoordinator.swift
//  Coordinator
//
//  Created by Pablo Tamayo on 06/10/2020.
//  Copyright © 2020 Pablo Tamayo. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self       // coordinator is assigned, i.e.: not-nil
        navigationController.pushViewController(vc, animated: false)
    }
    
    func buySubscription() {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }

    func createAccount() {
        let vc = CreateAccountViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
