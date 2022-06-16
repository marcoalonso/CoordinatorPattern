//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by marco rodriguez on 16/06/22.
//

import UIKit

class ViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    
    static let screenWidth:CGFloat = UIScreen.main.bounds.width
        static let screenHeight:CGFloat = UIScreen.main.bounds.height
        
        // In this example, all the button's center x value is half of the screen width.
        let horizontialCenter:CGFloat = screenWidth/2
        
        // Each of the example button's center y value is increased by creenHeight/8 one by one.
        let verticalDistance:CGFloat = screenHeight/8
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Coordinator Home"
        view.backgroundColor = .white
        
        createSystemButton()
        createContactAddButton()
               
//               createDetailDisclosureButton()
//               createInfoLightButton()
//               createInfoDarkButton()
//               createCustomButton()
    }
    
    @objc func didTapButton1() {
        coordinator?.eventOccurred(with: .buttonTapped1)
        
    }
    
    @objc func didTapButton2() {
        coordinator?.eventOccurred(with: .buttonTapped2)
        
    }
    
    func createSystemButton(){
            
            let systemDefaultBtn:UIButton = UIButton(type: UIButton.ButtonType.system)
            systemDefaultBtn.frame = CGRect(x: 10, y: 100, width: 300, height: 50)
            systemDefaultBtn.center = CGPoint(x: horizontialCenter, y: verticalDistance)
            systemDefaultBtn.backgroundColor = UIColor.green
            systemDefaultBtn.setTitle("System Button", for: UIControl.State.normal)
            systemDefaultBtn.setTitleColor(UIColor.red, for: UIControl.State.normal)
            systemDefaultBtn.titleLabel?.font = UIFont.systemFont(ofSize: 35)
            systemDefaultBtn.layer.cornerRadius = 14
            self.view.addSubview(systemDefaultBtn)
            systemDefaultBtn.addTarget(self, action: #selector(didTapButton2), for: .touchUpInside)
        }
        
        /* This function will create a detail disclosure button. */
        func createDetailDisclosureButton(){
            
            let detailDisclosureBtn:UIButton = UIButton(type: UIButton.ButtonType.detailDisclosure)
            // If you do not set the button's frame property, then the button text will not be shown. This is also the generally usage of this kind of button.
            //detailDisclosureBtn.frame = CGRect(x: 10, y: 100, width: 300, height: 100)
            
            detailDisclosureBtn.center = CGPoint(x: horizontialCenter, y: 2*verticalDistance)
            
            // Clear the detail disclosure button background color, this will make it's background color white.
            detailDisclosureBtn.backgroundColor = UIColor.clear
            
            // Because do not set button frame, so no need to set button title, title color and title font.
            // detailDisclosureBtn.setTitle("Detail Disclosure Button", for: UIControl.State.normal)
            // detailDisclosureBtn.setTitleColor(UIColor.red, for: UIControl.State.normal)
            // detailDisclosureBtn.titleLabel?.font = UIFont.systemFont(ofSize: 35)
            
            self.view.addSubview(detailDisclosureBtn)
        }
        
        /* This function will create a info light button. */
        func createInfoLightButton(){
            let btnFrame: CGRect = CGRect(x: 0, y:0, width: 300, height: 100)
            let btnCenter: CGPoint = CGPoint(x: horizontialCenter, y: 3*verticalDistance)
            let btnBgColor: UIColor = UIColor.clear
            let btnTitle: String = "Info Light Button"
            let btnTitleColor: UIColor = UIColor.black
            let btnTitleFont: UIFont = UIFont.boldSystemFont(ofSize: 55)
            
            let infoLightBtn:UIButton = createButtonByType(btnType: UIButton.ButtonType.infoLight, btnFrame: btnFrame, btnCenter: btnCenter, bgColor: btnBgColor, title: btnTitle, titleColor: btnTitleColor, titleFont: btnTitleFont)
            
            self.view.addSubview(infoLightBtn)
        }
        
        /* This function will create a info dark button. */
        func createInfoDarkButton(){
            let btnFrame: CGRect = CGRect(x: 0, y:0, width: 300, height: 100)
            let btnCenter: CGPoint = CGPoint(x: horizontialCenter, y: 4*verticalDistance)
            let btnBgColor: UIColor = UIColor.clear
            let btnTitle: String = "Info Dark Button"
            let btnTitleColor: UIColor = UIColor.green
            let btnTitleFont: UIFont = UIFont.boldSystemFont(ofSize: 55)
            
            let infoDarkBtn:UIButton = createButtonByType(btnType: UIButton.ButtonType.infoDark, btnFrame: btnFrame, btnCenter: btnCenter, bgColor: btnBgColor, title: btnTitle, titleColor: btnTitleColor, titleFont: btnTitleFont)
            
            self.view.addSubview(infoDarkBtn)
        }
        
        /* This function will create a contact add button. */
        func createContactAddButton(){
            let btnFrame: CGRect = CGRect(x: 10, y: 100, width: 300, height: 100)
            let btnCenter: CGPoint = CGPoint(x: horizontialCenter, y: 5*verticalDistance)
            let btnBgColor: UIColor = UIColor.blue
            let btnTitle: String = "Other Screen"
            let btnTitleColor: UIColor = UIColor.yellow
            let btnTitleFont: UIFont = UIFont.boldSystemFont(ofSize: 35)
            
            let contactAddButton:UIButton = createButtonByType(btnType: UIButton.ButtonType.contactAdd, btnFrame: btnFrame, btnCenter: btnCenter, bgColor: btnBgColor, title: btnTitle, titleColor: btnTitleColor, titleFont: btnTitleFont)
            contactAddButton.layer.cornerRadius = 16
            contactAddButton.addTarget(self, action: #selector(didTapButton1), for: .touchUpInside)
            self.view.addSubview(contactAddButton)
        }
        
        /* This function will create a customized button. */
        func createCustomButton(){
            let btnFrame: CGRect = CGRect(x: 10, y: 100, width: 300, height: 100)
            let btnCenter: CGPoint = CGPoint(x: horizontialCenter, y: 6*verticalDistance)
            let btnBgColor: UIColor = UIColor.blue
            let btnTitle: String = "Custom Button"
            let btnTitleColor: UIColor = UIColor.yellow
            let btnTitleFont: UIFont = UIFont.boldSystemFont(ofSize: 35)
            
            let customButton:UIButton = createButtonByType(btnType: UIButton.ButtonType.custom, btnFrame: btnFrame, btnCenter: btnCenter, bgColor: btnBgColor, title: btnTitle, titleColor: btnTitleColor, titleFont: btnTitleFont)
            
            self.view.addSubview(customButton)
        }
        
        /* This is the general function to create button, the input parameter decide the button type and outlook. */
        func createButtonByType(btnType:UIButton.ButtonType, btnFrame:CGRect, btnCenter: CGPoint, bgColor: UIColor, title: String, titleColor: UIColor, titleFont: UIFont) -> UIButton {
            
            // Create the button with the button type.
            let btn:UIButton = UIButton(type: btnType)
            
            // Set button frame.
            btn.frame = btnFrame
            
            // Set button center point location.
            btn.center = btnCenter
            
            // Set button background color.
            btn.backgroundColor = bgColor
            
            // Set button title.
            btn.setTitle(title, for: UIControl.State.normal)
            
            // Set button title color.
            btn.setTitleColor(titleColor, for: UIControl.State.normal)
            
            // Set button title font.
            btn.titleLabel?.font = titleFont
            
            // Return the created button object.
            return btn
            
        
    }


}

