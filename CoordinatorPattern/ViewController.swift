//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by marco rodriguez on 16/06/22.
//

import UIKit

class ViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        title = "Coordinator Home"
        
        // MARK: - Button 1
        let button = UIButton(frame: CGRect(x: 440, y: 400, width: 420, height: 105))
        view.addSubview(button)
        button.center = view.center
        button.backgroundColor = .red
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Screen 1", for: .normal)
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(didTapButton1), for: .touchUpInside)
        
        // MARK: - Button 2
        let button2 = UIButton(frame: CGRect(x: -100, y: -100, width: 220, height: 55))
        view.addSubview(button2)
        button2.center = view.center
        button2.backgroundColor = .blue
        button2.setTitleColor(.white, for: .normal)
        button2.setTitle("Screen 2", for: .normal)
        button2.layer.cornerRadius = 15
        button2.addTarget(self, action: #selector(didTapButton2), for: .touchUpInside)
    }
    
    @objc func didTapButton1() {
        coordinator?.eventOccurred(with: .buttonTapped1)
        
    }
    
    @objc func didTapButton2() {
        coordinator?.eventOccurred(with: .buttonTapped2)
        
    }


}

