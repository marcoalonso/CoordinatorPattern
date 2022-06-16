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
        
        let imagen = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        imagen.image = UIImage(systemName: "person.fill")
        view.addSubview(imagen)
    }
    
    
    

}
