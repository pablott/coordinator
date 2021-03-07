//
//  ViewController.swift
//  Coordinator
//
//  Created by Pablo Tamayo on 06/10/2020.
//  Copyright © 2020 Pablo Tamayo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?
    
    @IBAction func buyTapped(_ sender: Any) {
        coordinator?.buySubscription()      // coordinator is now nil, why?
    }
    @IBAction func createAccountTapped(_ sender: Any) {
        coordinator?.createAccount()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    deinit {
        print("existing ViewController")
    }


}

