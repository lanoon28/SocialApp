//
//  CustomTextField.swift
//  SocialApp
//
//  Created by Lanoon on 2023/09/17.
//

import UIKit

class CustomTextField: UITextField{
    init(placeHolder: String){
        super.init(frame: .zero)
        
        let space = UIView()
        space.setDimension(height: 50, width: 13)
        leftView = space
        leftViewMode = .always
        
        borderStyle = .none
        textColor = .white
        keyboardAppearance = .dark
        setHeight(50)
        backgroundColor = UIColor(white: 1, alpha: 0.1)
        attributedPlaceholder = NSAttributedString(string: placeHolder, attributes: [.foregroundColor: UIColor(white: 1, alpha: 0.7)])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
