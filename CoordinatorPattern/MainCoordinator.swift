//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by marco rodriguez on 16/06/22.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController?
    
    var children: [Coordinator]? = nil
    
    func eventOccurred(with type: Event) {
        switch type {
        case .buttonTapped1:
            var vc: UIViewController & Coordinating = SecondViewController()
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true)
            
        case .buttonTapped2:
            var vc: UIViewController & Coordinating = ThirdViewController()
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func start() {
        var vc: UIViewController & Coordinating = ViewController()
        
        vc.coordinator = self
        
        navigationController?.setViewControllers([vc], animated: false)
    }
    
    
}
