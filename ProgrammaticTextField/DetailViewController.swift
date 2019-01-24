//
//  DetailViewController.swift
//  ProgrammaticTextField
//
//  Created by Manny Yusuf on 1/24/19.
//  Copyright © 2019 Manny Yusuf. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    let detailView = DetailView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        self.view.addSubview(detailView)
    }
    
    init (message: String) {
        super.init(nibName: nil, bundle: nil)
        detailView.detailLabel.text = message
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
