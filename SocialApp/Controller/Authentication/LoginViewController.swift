//
//  LoginViewController.swift
//  SocialApp
//
//  Created by Lanoon on 2023/08/17.
//

import UIKit

class LoginViewController: UIViewController{
    
    //MARK: - Properties
    
    private let mainIcon: UIImageView = {
        
        let mi = UIImageView(image: #imageLiteral(resourceName: "Instagram_PNG-Logo-Oksdf"))
        mi.contentMode = .scaleAspectFill
        mi.tintColor = .white
        return mi
    }()
    
    private var emailTextField: UITextField = {
        
        let et = UITextField()
        et.textColor = .white
        et.keyboardAppearance = .dark
        et.keyboardType = .emailAddress
        et.backgroundColor = UIColor(white: 1, alpha: 0.4)
        et.borderStyle = .none
        et.attributedPlaceholder = NSAttributedString(string: "   Email", attributes: [.foregroundColor: UIColor(white: 1, alpha: 0.7)])
        et.setHeight(50)
        
        return et
    }()
    
    private let passwordTextField: UITextField = {
        
        let pt = UITextField()
        pt.textColor = .white
        pt.keyboardAppearance = .dark
        pt.backgroundColor = UIColor(white: 1, alpha: 0.4)
        pt.setHeight(50)
        pt.attributedPlaceholder = NSAttributedString(string: "   Password", attributes: [.foregroundColor: UIColor(white: 1, alpha: 0.7)])
        pt.isSecureTextEntry = true
        
        return pt
    }()

    private let loginButton: UIButton = {
        
        let bt = UIButton(type: .system)
        bt.setTitle("Login", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = #colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)
        bt.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        bt.layer.cornerRadius = 10
        bt.setHeight(50)
        
        return bt
    }()
    
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view.backgroundColor = .darkGray
        
        //view.addSubview(emailTextField)
        //emailTextField.anchor(top: view.topAnchor, left: view.leadingAnchor, paddingTop: 30, paddingLeft: 30)
        configueUI()
        
        
    }
    
    
    //MARK: - Helper
    
    func configueUI(){
        view.backgroundColor = .white
        
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemBlue.cgColor,UIColor.systemRed.cgColor]
        gradient.locations = [0, 1]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
        
        navigationController?.navigationBar.barStyle = .black
        
        view.addSubview(mainIcon)
        mainIcon.centerX(inview: view)
        mainIcon.setDimension(height: 60, width: 80)
        mainIcon.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 30)
        
        let stackView = UIStackView(arrangedSubviews: [emailTextField, passwordTextField, loginButton])
        stackView.axis = .vertical
        stackView.spacing = 20
        
        view.addSubview(stackView)
        stackView.anchor(top: mainIcon.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 30, paddingLeft: 30, paddingRight: 30)
    
    }
}
