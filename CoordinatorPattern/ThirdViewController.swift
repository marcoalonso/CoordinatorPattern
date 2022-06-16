//
//  ThirdViewController.swift
//  CoordinatorPattern
//
//  Created by marco rodriguez on 16/06/22.
//

import UIKit

class ThirdViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title  = "Third VC"
        
        view.backgroundColor = .green
    }
    

}
