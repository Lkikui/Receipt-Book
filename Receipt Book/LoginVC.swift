//
//  LoginVC.swift
//  Reciept Book
//
//  Created by Lisa Ryland on 2/26/18.
//  Copyright © 2018 Lisa Ryland. All rights reserved.
//

import UIKit

extension UIView {
    func addBottomBorderWithColor(color: UIColor, width: CGFloat) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width: frame.size.width, height: width)
        self.layer.addSublayer(border)
    }
}

class LoginVC: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func unwindToLoginVC(segue: UIStoryboardSegue) {}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //textfield border
        emailTextField.addBottomBorderWithColor(color: UIColor.white, width: 2.0)
        passwordTextField.addBottomBorderWithColor(color: UIColor.white, width: 2.0)
        
        //placeholder color
        emailTextField.attributedPlaceholder = NSAttributedString(string: "Email Address", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
        
        //background image
        let backgroundImg = UIImage(named: "23bg_18.jpg")
        let imageView = UIImageView(frame: self.view.bounds)
        imageView.image = backgroundImg
        self.view.addSubview(imageView)
        self.view.sendSubview(toBack: imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

