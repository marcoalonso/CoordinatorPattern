//
//  SecondViewController.swift
//  CoordinatorPattern
//
//  Created by marco rodriguez on 16/06/22.
//

import UIKit

class SecondViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title  = "Second VC"
        
        view.backgroundColor = .systemPurple
        
        
    }
    
    
    

}
