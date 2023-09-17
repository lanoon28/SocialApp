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
    
    private var emailTextField: CustomTextField = {
        
        let et = CustomTextField(placeHolder: "Email")
        et.layer.cornerRadius = 10
        et.keyboardType = .emailAddress
        return et
    }()
    
    private let passwordTextField: CustomTextField = {
        
        let pt = CustomTextField(placeHolder: "Password")
        pt.layer.cornerRadius = 10
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
    
    private let forgotPassword: UIButton = {
        let bt = UIButton(type: .system)
        bt.attributedTitle(firstPart: "Forgot your password?", secondPart: "Get help signing in")
        bt.addTarget(self, action: #selector(handleResetPassword), for: .touchUpInside)
        
        return bt
    }()
    
    
    private let newAccount: UIButton = {
        let bt = UIButton(type: .system)
        bt.attributedTitle(firstPart: "Don't have an account?", secondPart: "Sign UP")
        bt.addTarget(self, action: #selector(handleNewAccount), for: .touchUpInside)
        
        return bt
    }()
    
    
    
    
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
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
        
        let stackView = UIStackView(arrangedSubviews: [emailTextField, passwordTextField, loginButton, forgotPassword])
        stackView.axis = .vertical
        stackView.spacing = 20
        
        view.addSubview(stackView)
        stackView.anchor(top: mainIcon.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 30, paddingLeft: 30, paddingRight: 30)
    
        view.addSubview(newAccount)
        newAccount.centerX(inview: view)
        newAccount.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor)
        
    }
    
    
    @objc func handleResetPassword(){
        
    }
    
    @objc func handleNewAccount(){
        
    }

    
}
