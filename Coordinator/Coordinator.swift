//
//  Coordinator.swift
//  Coordinator
//
//  Created by Pablo Tamayo on 06/10/2020.
//  Copyright © 2020 Pablo Tamayo. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}
