//
//  ViewController.swift
//  ProgrammaticTextField
//
//  Created by Manny Yusuf on 1/24/19.
//  Copyright © 2019 Manny Yusuf. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    let mainView = MainView()
    
    public var message = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        self.view.addSubview(mainView)
        mainView.myTextField.delegate = self 
        mainView.delegate = self
    }
}

extension MainViewController: MainViewDelegate {
    func seguePressed() {
        let detail = DetailViewController.init(message: message)
        navigationController?.pushViewController(detail, animated: true)
    }
    
    func typedMessage(message: String) {
        self.message = message
        
    }
}

extension MainViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text {
            mainView.delegate?.typedMessage(message: text)
            textField.resignFirstResponder()
        }
        return true
    }
}
