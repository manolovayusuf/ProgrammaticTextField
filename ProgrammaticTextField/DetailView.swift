//
//  DetailView.swift
//  ProgrammaticTextField
//
//  Created by Manny Yusuf on 1/24/19.
//  Copyright © 2019 Manny Yusuf. All rights reserved.
//

import UIKit

class DetailView: UIView {

    
    lazy var detailLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(detailLabel)
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        detailLabel.translatesAutoresizingMaskIntoConstraints = false
        detailLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 11).isActive = true
        detailLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 11).isActive = true
        detailLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
    }

}
