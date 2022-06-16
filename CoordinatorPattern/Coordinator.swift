//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by marco rodriguez on 16/06/22.
//

import Foundation
 //recibir eventos de un VC controlador de vista para realizar alguna accion
import UIKit

enum Event {
    case buttonTapped1
    case buttonTapped2
    case buttonTapped3
}

protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    
    var children: [Coordinator]? { get set }
    
    
    func eventOccurred(with type: Event)
    
    func start()
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}

