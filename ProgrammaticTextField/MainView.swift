//
//  MainView.swift
//  ProgrammaticTextField
//
//  Created by Manny Yusuf on 1/24/19.
//  Copyright © 2019 Manny Yusuf. All rights reserved.
//

import UIKit

protocol MainViewDelegate: AnyObject {
    func typedMessage(message: String)
    func seguePressed()
}

class MainView: UIView {
    
    weak var delegate: MainViewDelegate?
    
    lazy var myTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        textField.textColor = .black
        textField.textAlignment = .center
        textField.addTarget(self, action: #selector(textShown), for: .touchUpInside)
        return textField
    }()
    
    lazy var mainButton: UIButton = {
        let button = UIButton()
        button.setTitle("Bang Me!", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        button.addTarget(self, action: #selector(seguePressed), for: .touchUpInside)
        return button
    }()
    
    @objc func seguePressed() {
        delegate?.seguePressed()
    }
    
    @objc func textShown() {
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(myTextField)
        addSubview(mainButton)
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        myTextField.translatesAutoresizingMaskIntoConstraints = false
        myTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        myTextField.bottomAnchor.constraint(equalTo: mainButton.topAnchor, constant: -22).isActive = true
        myTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 22).isActive = true
        myTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -22).isActive = true
        
        mainButton.translatesAutoresizingMaskIntoConstraints = false
        mainButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
    }

}
