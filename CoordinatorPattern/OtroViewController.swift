//
//  OtroViewController.swift
//  CoordinatorPattern
//
//  Created by marco rodriguez on 16/06/22.
//

import UIKit

class OtroViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title  = "Otro VC"
        
        view.backgroundColor = .gray
    }
    

   

}
